@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for giftcard 011'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity zats_c_giftcard_011
  provider contract transactional_query
  as projection on zats_r_giftcard_011
{
  key SapUuid,
      Giftcardnumber,
      SapDescription,
      AmountV,
      AmountC,
      LocalLastChanged,
      LastChanged
}
