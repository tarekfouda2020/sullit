part of 'cart_confirm_buying_imports.dart';


class ConfirmBuyingController{

  final GenericBloc<OrderSummary?> orderSummaryBloc = GenericBloc(null);
  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);



  ConfirmBuyingController (OrderSummary? summary, int? id) {
    if(summary != null){
      orderSummaryBloc.onUpdateData(summary);
    }else if(id != null){
      getCombinedOrder(id);
    }
    getOrderFees(fromRemote: false);
    getOrderFees();
  }

  Future<void> getCombinedOrder (int id) async {
    var data = await GetCombinedOrder().call(id);
    orderSummaryBloc.onUpdateData(data);
  }

  Future<void> getOrderFees({bool fromRemote = true})async{
    await GetOrderFees().call(fromRemote).then((value) {
      feesCubit.onUpdateData(value);
    },);
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


  void showFeesSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(feesCubit: feesCubit,showDelivery: false,);
      },);
  }

  void showDeliveryFeesSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        // Service fee
        // This fee contributes to all costs related to servicing your order such as reflecting the assortment on the app, operations, technology development, quality assurance and others
        return FeesSheetWidget(feesCubit: feesCubit,showService: false,showTech: false,);
      },);
  }

  SendReviewParams _sendReviewParams(OrderDetails model, int rate) {
    return SendReviewParams(
      orderId: model.id ,
      productId: model.product?.id,
      rating: rate,
    );
  }



}