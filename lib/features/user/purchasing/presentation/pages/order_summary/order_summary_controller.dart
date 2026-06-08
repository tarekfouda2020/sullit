// ignore_for_file: use_build_context_synchronously

part of 'order_summary_imports.dart';

class OrderSummaryController {
  final GenericBloc<Orders?> orderDetailsBloc = GenericBloc(null);
  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);
  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
      GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);
  late int orderId;

  OrderSummaryController(int id) {
    orderId = id;
    getOrderDetails(orderId, refresh: false);
    getOrderDetails(orderId);
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance();
  }

  Future<void> getOrderDetails(int id, {bool refresh = true}) async {
    var params = _genericParams(id, refresh);
    var result = await GetOrderDetails().call(params);
    result?.orderDetails.forEach(
      (element) => element.orderReview = OrderReview(
        rateComment: TextEditingController(),
        ratingCubit: GenericBloc(0),
        formKey: GlobalKey(),
      ),
    );
    if (result == null) {
      orderDetailsBloc.onFailedResponse(error: tr("noDataFoundForOrder"));
      return;
    }
    orderDetailsBloc.onUpdateData(result);
  }

  void sendReview(BuildContext context, OrderDetails model) async {
    if (model.orderReview!.formKey.currentState!.validate()) {
      var params = _sendReviewParams(model);
      var result = await SendReview().call(params);
      if (result != null) {
        model.review = result;
        model.isAvailableReview = false;
        orderDetailsBloc.onUpdateData(orderDetailsBloc.state.data);
        CustomToast.showSimpleToast(
            msg: tr("reviewSuccess"), type: ToastType.success);
      }
      AutoRouter.of(context).pop();
    }
  }

  void onPayOrder(BuildContext context) async {
    var result = await PayOrder().call(orderDetailsBloc.state.data!.id);
    if (result.isNotEmpty) {
      AutoRouter.of(context).push(
        PaymentRoute(transactionUrl: result),
      );
    }
  }

  void _confirmOrder(BuildContext context, OrderSummary data) {
    CustomToast.showSimpleToast(
      msg: tr('thanksForYourOrder'),
      type: ToastType.success,
    );
    AutoRouter.of(context).push(HomeRoute(index: 0));
  }

  void showReviewDialog(BuildContext context, OrderDetails model) {
    showDialog(
      context: context,
      builder: (context) => BuildReviewDialog(
        controller: this,
        orderDetailsModel: model,
      ),
    );
  }

  GenericParams _genericParams(int orderId, bool refresh) {
    return GenericParams(
      id: orderId,
      refresh: refresh,
    );
  }

  SendReviewParams _sendReviewParams(OrderDetails model) {
    return SendReviewParams(
      orderId: orderId,
      productId: model.product?.id,
      rating: model.orderReview?.ratingCubit.state.data,
      comment: model.orderReview?.rateComment.text,
    );
  }

  Future<void> getOrderFees({bool fromRemote = true}) async {
    await GetOrderFees().call(fromRemote).then((value) {
      feesCubit.onUpdateData(value);
    });
  }

  void showFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
            feesCubit: feesCubit, showDelivery: false, showTech: true);
      },
    );
  }

  void showDeliveryFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
            feesCubit: feesCubit, showService: false, showTech: false);
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
            showEnv: true);
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
}
