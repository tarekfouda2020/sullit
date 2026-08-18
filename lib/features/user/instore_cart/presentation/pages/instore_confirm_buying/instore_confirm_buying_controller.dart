part of 'instore_confirm_buying_imports.dart';

class InstoreConfirmBuyingController {
  final GenericBloc<OrderSummaryDomainModel?> orderSummaryBloc = GenericBloc(null);
  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);
  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
      GenericBloc(null);

  bool _checkoutEventLogged = false;

  InstoreConfirmBuyingController(OrderSummaryDomainModel? summary, int? id) {
    if (summary != null) {
      orderSummaryBloc.onUpdateData(summary);
      FacebookEventsHelper.instance
          .purchaseEvent(double.parse(summary.summary!.totalOrderAmount));
      addCheckOutEvent(summary);
    } else if (id != null) {
      getCombinedOrder(id);
    }
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance();
  }

  Future<void> getCombinedOrder(int id) async {
    final data = await GetCombinedOrder().call(id);

    if (data != null) {
      orderSummaryBloc.onUpdateData(data);
      if (data.summary != null) {
        FacebookEventsHelper.instance
            .purchaseEvent(double.parse(data.summary!.totalOrderAmount));
      }
      _logCheckoutOnce(data);
    }
  }

  void _logCheckoutOnce(OrderSummaryDomainModel summary) {
    if (!_checkoutEventLogged) {
      addCheckOutEvent(summary);
      _checkoutEventLogged = true;
    }
  }

  Future<void> getOrderFees({bool fromRemote = true}) async {
    await GetOrderFees().call(fromRemote).then((value) {
      feesCubit.onUpdateData(value);
    });
  }

  void reviewSheet(BuildContext context, OrderDetails model) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ReviewProductSheetWidget(
        onRateProduct: (value) => sendReview(context, model, value.toInt()),
        initRate: model.review?.rate.toDouble(),
      ),
    );
  }

  Future<void> sendReview(
    BuildContext context,
    OrderDetails? model,
    int rate,
  ) async {
    if (model == null) {
      Navigator.of(context).pop();
      return;
    }

    final params = _sendReviewParams(model, rate);
    final result = await SendReview().call(params);
    if (result != null) {
      model.review = result;
      model.isAvailableReview = false;
      CustomToast.showSimpleToast(
        msg: tr('reviewSuccess'),
        type: ToastType.success,
      );
      orderSummaryBloc.onUpdateData(orderSummaryBloc.state.data);
    }
    Navigator.of(context).pop();
  }

  void showFeesSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showDelivery: false,
        );
      },
    );
  }

  void showDeliveryFeesSheet(BuildContext context) {
    showModalBottomSheet<void>(
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

  void showEnvFeesSheet(BuildContext context) {
    showModalBottomSheet<void>(
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
    await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
        );
  }

  SendReviewParams _sendReviewParams(OrderDetails model, int rate) {
    return SendReviewParams(
      orderId: model.id,
      productId: model.product?.id,
      rating: rate,
    );
  }

  void onPressBack(BuildContext context) {
    AutoRouter.of(context).pushAndPopUntil(
      HomeRoute(index: 0),
      predicate: (route) => route.settings.name == HomeRoute.name,
    );
  }

  void showTierFullName(
    BuildContext context,
    String description,
    String title,
  ) {
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      isDismissible: true,
      isScrollControlled: false,
      enableDrag: false,
      builder: (context) {
        return FullTierNameWidget(description: description, title: title);
      },
    );
  }

  void addCheckOutEvent(OrderSummaryDomainModel summary) {
    FacebookEventsHelper.instance.checkOut(
      itemsNumber: summary.getTotalItems(),
      orderPrice: double.parse(summary.summary!.totalOrderAmount),
      orderId: summary.summary!.combinedOrderId.toString(),
    );
  }
}
