part of 'order_details_imports.dart';


class OrderDetailsPageController {

  final GenericBloc<Orders?> orderDetailsBloc = GenericBloc(null);

  OrderDetailsPageController(Orders orderModel){
    orderDetailsBloc.onUpdateData(orderModel);
    getOrderDetails(orderModel.id,refresh: false);
    getOrderDetails(orderModel.id,);
  }


  void reviewSheet(BuildContext context,OrderDetails? model){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ReviewProductSheetWidget(
        onRateProduct: (value ) => sendReview(context, model,value.toInt()),
        initRate: model?.review?.rate.toDouble(),
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
        orderDetailsBloc.onUpdateData(orderDetailsBloc.state.data);
        CustomToast.showSimpleToast(msg: tr("reviewSuccess"),type: ToastType.success);
      }
      Navigator.of(context).pop();
    }
  }

  SendReviewParams _sendReviewParams(OrderDetails model, int rate) {
    return SendReviewParams(
      orderId: orderDetailsBloc.state.data?.id ?? 0,
      productId: model.product?.id,
      rating: rate,
    );
  }


  Future<void> getOrderDetails(int id, {bool refresh = true})async{
    GenericParams params = _params(id, refresh);
    await GetOrderDetails()(params).then((value) {
      if(value != null){
        orderDetailsBloc.onUpdateData(value);
      }
    });
  }


  void onPayOrder(BuildContext context) async {
    var result = await PayOrder().call(orderDetailsBloc.state.data!.id);
    if (result.isNotEmpty) {
      await AutoRouter.of(context).push(
        PaymentRoute(transactionUrl: result),
      );
      getOrderDetails(orderDetailsBloc.state.data!.id,);

    }
  }

  void cancelOrder(BuildContext context,Orders model) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await CancelOrder().call(model.id);
    if (result.isNotEmpty) {
      CustomToast.showSimpleToast(msg: result);
      model.availableCancelOrder = false;
      AutoRouter.of(context).pop(true);
    }
    getIt<LoadingHelper>().dismissDialog();
  }


  GenericParams _params(int id,bool refresh){
    return GenericParams(id: id,refresh:refresh );
  }


}