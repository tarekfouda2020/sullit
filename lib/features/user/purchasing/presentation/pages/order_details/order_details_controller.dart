part of 'order_details_imports.dart';

class OrderDetailsPageController {
  final GenericBloc<Orders?> orderDetailsBloc = GenericBloc(null);

  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);

  final GenericBloc<List<PaymentOption>> paymentOptionsBloc = GenericBloc([]);

  final ScrollController scrollController = ScrollController();

  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
      GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);

  OrderDetailsPageController(int id) {
    getOrderDetails(id, refresh: false);
    getOrderDetails(
      id,
    );
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance();
  }

  void showProofOfDelivery(BuildContext context, String imageUrl) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (_) => ProofOfDeliverySheet(imageUrl: imageUrl),
    );
  }

  void reviewSheet(BuildContext context, OrderDetails? model) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ReviewProductSheetWidget(
        onRateProduct: (value) => sendReview(context, model, value.toInt()),
        initRate: model?.review?.rate.toDouble(),
      ),
    );
  }

  Future<void> sendReview(
      BuildContext context, OrderDetails? model, int rate) async {
    if (model == null) {
      Navigator.of(context).pop();
      return;
    } else {
      var params = _sendReviewParams(model, rate);
      var result = await SendReview().call(params);
      if (result != null) {
        model.review = result;
        model.isAvailableReview = false;
        orderDetailsBloc.onUpdateData(orderDetailsBloc.state.data);
        CustomToast.showSimpleToast(
            msg: tr("reviewSuccess"), type: ToastType.success);
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

  Future<void> getOrderDetails(int id, {bool refresh = true}) async {
    GenericParams params = _params(id, refresh);
    await GetOrderDetails()(params).then((value) {
      if (value != null) {
        orderDetailsBloc.onUpdateData(value);
        fetchPaymentOptions(refresh: false);
        fetchPaymentOptions();
      }
    });
  }

  void onPayOrder(BuildContext context) async {
    var result = await PayOrder().call(orderDetailsBloc.state.data!.id);
    if (result.isNotEmpty) {
      await AutoRouter.of(context).push(
        PaymentRoute(transactionUrl: result),
      );
      getOrderDetails(
        orderDetailsBloc.state.data!.id,
      );
    }
  }

  void cancelOrder(BuildContext ctx) async {
    Orders model = orderDetailsBloc.state.data!;
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
        // Service fee
        // This fee contributes to all costs related to servicing your order such as reflecting the assortment on the app, operations, technology development, quality assurance and others
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
        // Service fee
        // This fee contributes to all costs related to servicing your order such as reflecting the assortment on the app, operations, technology development, quality assurance and others
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
        // Service fee
        // This fee contributes to all costs related to servicing your order such as reflecting the assortment on the app, operations, technology development, quality assurance and others
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

  Future<void> reOrder(BuildContext context, int orderId) async {
    String result = await OrderAgain()(orderId);
    if (result.isNotEmpty) {
      CustomToast.showSimpleToast(msg: result, type: ToastType.success);
      await getIt<Utilities>().popManyTimes(context, 2);
      BuildContext ctx = getIt<GlobalContext>().context();
      AutoRouter.of(ctx).push(CartRoute());
    } else {
      CustomToast.showSimpleToast(msg: tr("tryAgain"), type: ToastType.error);
    }
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

  GenericParams _params(int id, bool refresh) {
    return GenericParams(id: id, refresh: refresh);
  }

  bool showChangePayOption() {
    var data = orderDetailsBloc.state.data;
    if (data == null) return false;
    return !data.isPaid && !data.isDelivered && !data.isCanceled;
  }

  Future<void> fetchPaymentOptions({bool refresh = true}) async {
    if (showChangePayOption()) {
      var result = await GetPaymentOptions().call(
        OrderPaymentOptionsParams(refresh: refresh, orderId: data.id),
      );
      if (result.isNotEmpty && orderDetailsBloc.state.data != null) {
        result = result.where((element) {
          return (element.paymentTypeKey.replaceAll("_", " ").toLowerCase()).toLowerCase() !=
              orderDetailsBloc.state.data!.paymentMethod.toLowerCase();
        }).toList();
      }
      paymentOptionsBloc.onUpdateData(result);
    }

  }

  void changePaymentMethod(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => ChangePaymentMethodSheet(controller: this),
    );
  }

  PaymentOption? selectedPaymentOption;

  void onSelectPaymentOption(PaymentOption option) {
    selectedPaymentOption = option;
    var currentList = paymentOptionsBloc.state.data;
    var updatedList =
        currentList.map((e) => e.copyWith(fakeSelected: e == option)).toList();
    paymentOptionsBloc.onUpdateData(updatedList);
  }

  Future<void> confirmChangePaymentMethod(BuildContext context) async {
    if (selectedPaymentOption == null) return;
    Navigator.pop(context);
    ChangeOrderPaymentParams params = _changeOrderPaymentParams();
    var result = await ChangeOrderPayMethod().call(params);
    if (result != null) {
      fetchPaymentOptions(refresh: true);
      orderDetailsBloc.onUpdateData(result);
      CustomToast.showSimpleToast(
          msg: tr("paymentMethodChanged"), type: ToastType.success);
      if (orderDetailsBloc.state.data!.isPaymentOnline) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    } else {
      CustomToast.showSimpleToast(
          msg: tr("errorChangingPaymentMethod"), type: ToastType.error);
    }
  }

  ChangeOrderPaymentParams _changeOrderPaymentParams() {
    return ChangeOrderPaymentParams(orderDetailsBloc.state.data!.id,
        payMethod: selectedPaymentOption!.paymentTypeKey);
  }

  Future<void> changeNoonStatus() async {
    /// before change enable key in ChangeNoonOrder class
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await ChangeNoonOrder.instance.changeStatus(
      _changeParms(),
    );
    result.fold(
      (l) {},
      (r) {
        CustomToast.showSimpleToast(msg: "Status updated successfully");
      },
    );
    getIt<LoadingHelper>().dismissDialog();
  }

  ChangeNoonOrderParams _changeParms() {
    /// this is dummy trackingNumber
    return ChangeNoonOrderParams(
      id: orderDetailsBloc.state.data!.id,
      noonStatus: NoonStatus.arrivedAtPickupLocation,
      trackingNumber: "HG5HNNA6EW7OH8TZ",
    );
  }
}
