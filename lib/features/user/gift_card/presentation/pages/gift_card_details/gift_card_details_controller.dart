part of 'gift_card_details_imports.dart';

class GiftCardDetailsController{

  late final bool isMyGiftCard;

  GiftCardDetailsController(bool myCard){
    isMyGiftCard = myCard;
  }


  void byGiftCard(BuildContext context){
    // AutoRouter.of(context).push(PaymentRoute(transactionUrl: ""));
  }

}