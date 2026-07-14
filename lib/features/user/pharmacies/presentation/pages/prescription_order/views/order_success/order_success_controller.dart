part of 'order_success_imports.dart';

class OrderSuccessController {
  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);

  final GenericBloc<OrderSummaryDomainModel?> orderSummaryBloc = GenericBloc(null);


  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
      GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);


  final OrderSummaryDomainModel summary;

  OrderSuccessController(this.summary) {
    orderSummaryBloc.onUpdateData(summary);
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
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


  Future<void> refreshData()async{
    var id = summary.summary?.combinedOrderId;
    if(id == null){
      return ;
    }
    var data = await GetCombinedOrder().call(id);
    orderSummaryBloc.onUpdateData(data);
  }


  Future<void> routeToTrackOrder(BuildContext context, int? orderId)async{
    if(orderId!= null){
      AutoRouter.of(context).push(TrackOrderRoute(orderId: orderId));
    }

  }

  void onPressBack(BuildContext context) {
    AutoRouter.of(context).pushAndPopUntil(
      HomeRoute(index: 0),
      predicate: (route) => route.settings.name == HomeRoute.name,
    );
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


}
