@EndUserText.label: 'Abstract Entity Gift Card 011'
define abstract entity ZATS_AB_ASSIGNGIFTCARDTOSO
{
  @Consumption.valueHelpDefinition: [{
      entity.name: 'ZATS_I_GIFTCARD_VH',
      entity.element: 'Giftcardnumber'

   }]
  @EndUserText.label: 'Choose a Gift card'
  Giftcardnumber : zats_ab_giftcardnum_011;

}
