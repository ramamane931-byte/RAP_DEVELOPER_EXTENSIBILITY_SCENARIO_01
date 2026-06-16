@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity for giftcard 011'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zats_r_giftcard_011
  as select from ztbl_giftcard
{
  key sap_uuid           as SapUuid,
      giftcardnumber     as Giftcardnumber,
      sap_description    as SapDescription,
      @Semantics.amount.currencyCode: 'AmountC'
      amount_v           as AmountV,
      amount_c           as AmountC,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed as LocalLastChanged,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed       as LastChanged

}
