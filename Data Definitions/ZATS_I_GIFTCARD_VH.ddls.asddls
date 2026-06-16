@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value help for GiftCard'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP
@Consumption.valueHelpDefault.fetchValues: #AUTOMATICALLY_WHEN_DISPLAYED
@Search.searchable: true
@Consumption.ranked: true
@ObjectModel.representativeKey: 'Giftcardnumber'
define view entity ZATS_I_GIFTCARD_VH
  as select from ztbl_giftcard
{
      @UI.hidden: true
  key sap_uuid        as SapUuid,
      @ObjectModel.text.element: [ 'SapDescription' ]
      giftcardnumber  as Giftcardnumber,
      @Search:{
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      sap_description as SapDescription,
      @Semantics.amount.currencyCode: 'AmountC'
      amount_v        as AmountV,
      amount_c        as AmountC
}
