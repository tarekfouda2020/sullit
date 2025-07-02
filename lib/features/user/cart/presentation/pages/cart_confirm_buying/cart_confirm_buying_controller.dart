part of 'cart_confirm_buying_imports.dart';


class ConfirmBuyingController{

  final GenericBloc<OrderSummary?> orderSummaryBloc = GenericBloc(null);

  ConfirmBuyingController (OrderSummary? summary, int? id) {
    if(summary != null){
      orderSummaryBloc.onUpdateData(summary);
    }else if(id != null){
      getCombinedOrder(id);
    }
  }

  Future<void> getCombinedOrder (int id) async {
    var data = await GetCombinedOrder().call(id);
    orderSummaryBloc.onUpdateData(data);
  }

  void navigateToHome (BuildContext context)=> AutoRouter.of(context).pushAndPopUntil(
    HomeRoute(index: 0),
    predicate: (route) => false,
  );


  void reviewSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ReviewProductSheetWidget(
          onRateProduct: (value ) {  }
      ),
    );
  }



}