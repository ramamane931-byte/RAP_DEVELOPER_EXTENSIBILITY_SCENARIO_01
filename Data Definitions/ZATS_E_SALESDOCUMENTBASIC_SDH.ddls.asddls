extend view entity E_SalesDocumentBasic with
association [0..1] to I_Currency as _Currency on $projection.zz_giftcardcurrency_sdh = _Currency.Currency
{
  @Semantics.amount.currencyCode: 'zz_giftcardcurrency_sdh'
  Persistence.zz_giftcardamount_sdh,
  @ObjectModel.foreignKey.association: '_Currency'
  Persistence.zz_giftcardcurrency_sdh,
  _Currency
}
