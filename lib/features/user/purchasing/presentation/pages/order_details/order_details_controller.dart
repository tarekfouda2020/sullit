part of 'order_details_imports.dart';


class OrderDetailsPageController {

  final GenericBloc<Orders?> orderDetailsBloc = GenericBloc(null);

  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);

  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc = GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);



  OrderDetailsPageController(Orders orderModel){
    orderDetailsBloc.onUpdateData(orderModel);
    getOrderDetails(orderModel.id,refresh: false);
    getOrderDetails(orderModel.id,);
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance();
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


  Future<void> getOrderFees({bool fromRemote = true})async{
    await GetOrderFees().call(fromRemote).then((value) {
      feesCubit.onUpdateData(value);
    },);
  }


  void showFeesSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(feesCubit: feesCubit,showDelivery: false,showTech: true,);
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

  void showTechFeesSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        // Service fee
        // This fee contributes to all costs related to servicing your order such as reflecting the assortment on the app, operations, technology development, quality assurance and others
        return FeesSheetWidget(feesCubit: feesCubit,showService: false, showDelivery: false,);
      },);
  }

  void showEnvFeesSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        // Service fee
        // This fee contributes to all costs related to servicing your order such as reflecting the assortment on the app, operations, technology development, quality assurance and others
        return FeesSheetWidget(feesCubit: feesCubit,showService: false, showDelivery: false,showTech: false,showEnv: true,);
      },);
  }

  Future<void> getLoyaltyPointsBalance({bool refresh = true}) async {
    return await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
    );
  }



  Future<void> reOrder(BuildContext context)async{
    await getIt<Utilities>().popManyTimes(context, 2);
    AutoRouter.of(context).push(const CartRoute());
  }



  GenericParams _params(int id,bool refresh){
    return GenericParams(id: id,refresh:refresh );
  }


}