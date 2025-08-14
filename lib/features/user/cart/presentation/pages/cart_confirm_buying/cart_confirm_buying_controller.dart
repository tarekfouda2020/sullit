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


  void reviewSheet(BuildContext context,OrderDetails model){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ReviewProductSheetWidget(
        onRateProduct: (value ) => sendReview(context, model,value.toInt()),
        initRate: model.review?.rate.toDouble(),
      ),
    );
  }

  Future<void> sendReview(BuildContext context, OrderDetails? model,int rate) async {
    if(model==null){
      Navigator.of(context).pop();
      return ;
    }else{
      var params = _sendReviewParams(model,rate);
      var result = await SendReview().call(params);
      if (result != null) {
        model.review = result;
        model.isAvailableReview = false;
        CustomToast.showSimpleToast(msg: tr("reviewSuccess"),type: ToastType.success);
        orderSummaryBloc.onUpdateData(orderSummaryBloc.state.data);
      }
      Navigator.of(context).pop();
    }
  }

  SendReviewParams _sendReviewParams(OrderDetails model, int rate) {
    return SendReviewParams(
      orderId: model.id ,
      productId: model.product?.id,
      rating: rate,
    );
  }



}