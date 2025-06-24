part of 'gift_cards_imports.dart';

class GiftCardsController{

  void routeRoMyGiftCard(BuildContext context){
   AutoRouter.of(context).push(const MyGiftCardsRoute());
  }

}