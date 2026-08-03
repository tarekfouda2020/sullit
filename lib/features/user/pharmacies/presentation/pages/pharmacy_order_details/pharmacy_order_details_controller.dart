part of 'pharmacy_order_details_imports.dart';

class PharmacyOrderDetailsController {
  final GenericBloc<Orders?> orderDetailsBloc = GenericBloc(null);

  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);

  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
      GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);

  final int orderId;

  PharmacyOrderDetailsController(this.orderId) {
    getOrderDetails(orderId, refresh: false);
    getOrderDetails(orderId);
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
  }

  Future<void> getOrderDetails(int id, {bool refresh = true}) async {
    GenericParams params = GenericParams(id: id, refresh: refresh);
    await GetOrderDetails()(params).then((value) {
      if (value != null) {
        orderDetailsBloc.onUpdateData(value);
      }
    });
  }

  Future<void> getOrderFees({bool fromRemote = true}) async {
    await GetOrderFees().call(fromRemote).then(
      (value) {
        feesCubit.onUpdateData(value);
      },
    );
  }

  void showFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showDelivery: false,
          showTech: true,
        );
      },
    );
  }

  void showDeliveryFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showService: false,
          showTech: false,
        );
      },
    );
  }

  void showTechFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showService: false,
          showDelivery: false,
        );
      },
    );
  }

  void showEnvFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showService: false,
          showDelivery: false,
          showTech: false,
          showEnv: true,
        );
      },
    );
  }

  Future<void> getLoyaltyPointsBalance({bool refresh = true}) async {
    return await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
        );
  }

  void showTierFullName(
      BuildContext context, String description, String title) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isDismissible: true,
      isScrollControlled: false,
      enableDrag: false,
      builder: (context) {
        return FullTierNameWidget(
          description: description,
          title: title,
        );
      },
    );
  }

  Future<void> refreshData() async {
    await getOrderDetails(orderId);
  }


  Future<void> routeToCheckout(BuildContext context)async{
   var result = await AutoRouter.of(context).push(
        PharmacyCheckOutRoute(
        shipping: null,
      confirmOrderId: orderDetailsBloc.state.data?.id,
          fromOrderDetails: true
    ));
   if(result == true){
     refreshData();
   }
  }


  void onPressBack(BuildContext context, bool fromCheckout) {
    if (fromCheckout) {
      AutoRouter.of(context).pushAndPopUntil(
        HomeRoute(index: 0),
        predicate: (route) => route.settings.name == HomeRoute.name,
      );
    }else{
      AutoRouter.of(context).pop();
    }

  }


  void openAttachment( BuildContext context,PharmacyAttachmentDomainModel model){
    if(model.type == "image" ) {
      AutoRouter.of(context).push(ImageZoomRoute(image: model.url ?? ""));
    } else{
     if(model.url!= null && model.url?.isNotEmpty == true){
       HelperMethods.instance.launchURL(url: model.url ?? "");
     }
    }
  }

  void openIdentityDocument(BuildContext context, String url) {
    AutoRouter.of(context).push(ImageZoomRoute(image: url));
  }


  void cancelOrder(BuildContext ctx) async {
    var model = orderDetailsBloc.state.data;
    if(model == null){
      return ;
    }
    showCupertinoDialog(
      context: ctx,
      builder: (context) => ConfirmCancelDialog(
        onConfirm: () async {
          Navigator.pop(context);
          getIt<LoadingHelper>().showLoadingDialog();
          var result = await CancelOrder().call(model.id);
          if (result.isNotEmpty) {
            CustomToast.showSimpleToast(msg: result, type: ToastType.success);
            model.availableCancelOrder = false;
            AutoRouter.of(ctx).pop(true);
          }
          getIt<LoadingHelper>().dismissDialog();
        },
      ),
    );
  }


  Future<void> routeToTrackOrder(BuildContext context)async{
    AutoRouter.of(context).push(TrackOrderRoute(orderId: orderDetailsBloc.state.data!.id));

  }


  Future<void> reOrder(BuildContext context,{bool prescriptionRequired = false}) async {
    if(prescriptionRequired){
      AutoRouter.of(context).pop();
      AutoRouter.of(context).push(PharmaciesListRoute(makePrescriptionOrder: true));
      return ;
    }
    String result = await OrderAgain()(orderId);
    if (result.isNotEmpty) {
      CustomToast.showSimpleToast(msg: result, type: ToastType.success);
      await getIt<Utilities>().popManyTimes(context, 2);
      BuildContext ctx = getIt<GlobalContext>().context();
      AutoRouter.of(ctx).push(PharmacyCartRoute(
          pharmacyId: orderDetailsBloc.state.data!.shop!.id,
          fromPharmacyDetails: false,
      ));
    } else {
      CustomToast.showSimpleToast(msg: tr("tryAgain"), type: ToastType.error);
    }
  }
}