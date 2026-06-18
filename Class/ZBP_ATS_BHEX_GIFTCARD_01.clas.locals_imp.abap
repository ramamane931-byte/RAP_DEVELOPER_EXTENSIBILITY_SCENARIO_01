CLASS lhc_salesorder DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR SalesOrder RESULT result.

    METHODS zz_use_gift_card FOR MODIFY
      IMPORTING keys FOR ACTION SalesOrder~zz_use_gift_card RESULT result.

ENDCLASS.

CLASS lhc_salesorder IMPLEMENTATION.

  METHOD get_instance_features.

    READ ENTITIES OF R_SalesOrderTP IN LOCAL MODE
    ENTITY SalesOrder
    FIELDS ( TotalNetAmount )
    WITH CORRESPONDING #( keys )
    RESULT DATA(lt_result_salesorder).

    result = VALUE #( FOR ls_salesorder IN lt_result_salesorder (
                         %tky = ls_salesorder-%tky
                         %features-%action-zz_use_gift_card =
                              COND #(
                                        WHEN ls_salesorder-TotalNetAmount < '50'
                                        THEN if_abap_behv=>fc-o-disabled
                                        ELSE if_abap_behv=>fc-o-enabled  )
                                       )
                         ).

  ENDMETHOD.

  METHOD zz_use_gift_card.

    ""Read the discount value from custom table based on gift card number. User select on popup
    ""Change the pricing element of our order data @runtime RB00 to apply -Amount
    SELECT giftcardnumber, amount_v, amount_c
      FROM ztbl_giftcard
      FOR ALL ENTRIES IN @keys
      WHERE giftcardnumber = @keys-%param-Giftcardnumber
      INTO TABLE @DATA(lt_discount).
    IF lt_discount IS NOT INITIAL.
      ""Suppose someone use EML to apply discount on 10 orders
      LOOP AT keys REFERENCE INTO DATA(lr_key).

        ""Get the discount on each order one by one
        READ TABLE lt_discount INTO DATA(ls_discount) WITH KEY giftcardnumber = lr_key->%param-Giftcardnumber.
        CHECK lt_discount IS NOT INITIAL.

        MODIFY ENTITIES OF r_salesordertp IN LOCAL MODE
        ENTITY SalesOrder
        UPDATE SET FIELDS WITH VALUE #(
          ( %tky = lr_key->%tky
            %data-zz_giftcardamount_sdh = ls_discount-amount_v
            %data-zz_giftcardcurrency_sdh = ls_discount-amount_c
         ) )
         CREATE BY \_PricingElement SET FIELDS WITH VALUE #(
             (
                %tky = lr_key->%tky
                %target = VALUE #(
                                   (
                                     %cid = 'RAMA'
                                     conditiontype = 'RB00'
                                     conditionrateamount = ls_discount-amount_v * ( -1 )
                                     conditioncurrency = ls_discount-amount_c
                                    )
                                   )
              )
         )
         FAILED DATA(ls_modify_failed)
         REPORTED DATA(ls_modify_reported).

        failed = CORRESPONDING #( APPENDING BASE ( failed ) ls_modify_failed ).
        reported = CORRESPONDING #( APPENDING BASE ( reported ) ls_modify_reported ).

      ENDLOOP.

      READ ENTITIES OF r_salesordertp IN LOCAL MODE
      ENTITY SalesOrder
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_salesorders).

      result = VALUE #( FOR ls_salesorders IN lt_salesorders (
      %tky = ls_salesorders-%tky
      %param = CORRESPONDING #( ls_salesorders )
                              )
                        ).

    ENDIF.

  ENDMETHOD.

ENDCLASS.

CLASS lsc_R_SALESORDERTP DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS cleanup_finalize REDEFINITION.

    METHODS map_messages REDEFINITION.

ENDCLASS.

CLASS lsc_R_SALESORDERTP IMPLEMENTATION.

  METHOD cleanup_finalize.
  ENDMETHOD.

  METHOD map_messages.
  ENDMETHOD.

ENDCLASS.
