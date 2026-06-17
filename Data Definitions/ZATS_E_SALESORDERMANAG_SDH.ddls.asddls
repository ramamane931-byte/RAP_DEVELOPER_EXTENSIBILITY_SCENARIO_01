extend view entity C_SalesOrderManage with
association [0..1] to I_Currency as _currency on SalesOrder.zz_giftcardcurrency_sdh = _currency.Currency
{
  @Semantics.amount.currencyCode: 'zz_giftcardcurrency_sdh'
  @EndUserText.label: 'Gift Card Amount'
  @UI.fieldGroup: [
                    { qualifier: 'OrderData', importance: #HIGH,
                      type : #FOR_ACTION, dataAction: 'zz_use_gift_card',
                      label: 'Use Gift Card' },
                    { qualifier: 'OrderData', importance: #HIGH, position: 100,
  //                      type : #FOR_ACTION, dataAction: 'zz_use_gift_card',
                      label: 'Gift Amount' }
                   ]
  @UI.lineItem: [   { position: 65, importance: #HIGH } ]

  SalesOrder.zz_giftcardamount_sdh,

  @EndUserText.label: 'Gift Card Currency'
  @UI.fieldGroup: [
                    { qualifier: 'OrderData', importance: #HIGH,
                      position: 101,
                      label: 'Gift Currency' }
                  ]
  SalesOrder.zz_giftcardcurrency_sdh
}
