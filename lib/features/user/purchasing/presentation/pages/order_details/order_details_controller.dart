part of 'order_details_imports.dart';


class OrderDetailsPageController {

  final GenericBloc<Orders?> orderDetailsBloc = GenericBloc(null);

  OrderDetailsPageController(Orders? orderModel){
    orderDetailsBloc.onUpdateData(orderModel);
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


}