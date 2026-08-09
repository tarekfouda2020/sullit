part of 'instore_checkout_imports.dart';

class InstoreCheckoutController {
  final GenericBloc<InstoreOrderSummaryModel?> summaryBloc = GenericBloc(null);
  final GenericBloc<List<PaymentOption>> paymentOptionsBloc =
      GenericBloc<List<PaymentOption>>([]);
  final GenericBloc<bool> isWalletSelected = GenericBloc(false);
  final GenericBloc<bool> applyPointsSwitchCubit = GenericBloc(false);
  final GenericBloc<bool> conditionsCubit = GenericBloc(false);
  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);
  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
      GenericBloc(null);
  final GlobalKey<FormState> giftCardFormKey = GlobalKey();
  final TextEditingController giftCardCode = TextEditingController();
  final TextEditingController coupon = TextEditingController();

  List<PaymentOption> paymentOptions = [];
  String? selectedPayment;
  bool isGiftCardApplied = false;
  String? appliedGiftCardAmount;
  String? _appliedGiftCardCode;
  String? _appliedCouponCode;
  bool? _loyaltyPointsApplied;

  InstoreCheckoutController() {
    getOrderSummary();
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
  }

  InstoreOrderSummaryModel? get summary => summaryBloc.state.data;

  Future<void> getOrderSummary() async {
    await _fetchSummary(keepSelection: false);
  }

  Future<bool> _fetchSummary({required bool keepSelection}) async {
    final params = _buildPreviewParams();
    if (params == null) return false;

    final previousTotal = summary?.total;
    final result = await GetInstoreOrderSummary().call(params);
    if (result == null) return false;

    _syncAppliedState(result, previousTotal);
    _setSummary(result, keepSelection: keepSelection);
    return true;
  }

  void _syncAppliedState(
    InstoreOrderSummaryModel result,
    String? previousTotal,
  ) {
    if (result.loyaltyPointsApplied) {
      _loyaltyPointsApplied = true;
    } else if (_loyaltyPointsApplied == true) {
      _loyaltyPointsApplied = false;
    }

    if (result.couponApplied) {
      _appliedCouponCode =
          result.couponCode ?? _appliedCouponCode ?? coupon.text.trim();
    } else if (_appliedCouponCode != null) {
      _appliedCouponCode = null;
    }

    if (_appliedGiftCardCode != null) {
      isGiftCardApplied = true;
      appliedGiftCardAmount =
          _giftCardDiscountAmount(previousTotal, result.total);
    }
  }

  void _setSummary(
    InstoreOrderSummaryModel result, {
    required bool keepSelection,
  }) {
    String? previousKey = selectedPayment;
    bool walletOn = isWalletSelected.state.data;

    summaryBloc.onUpdateData(result);
    applyPointsSwitchCubit.onUpdateData(result.loyaltyPointsApplied);
    paymentOptions =
        result.paymentOptions.map((option) => option.toDomainModel()).toList();

    if (!keepSelection || paymentOptions.isEmpty) {
      _initSelectedPayMethod();
    } else if (walletOn) {
      _applyWalletSelection();
    } else {
      _applyPaymentSelection(previousKey);
    }

    updatePaymentOptions();
  }

  InstoreOrderPreviewParams? _buildPreviewParams() {
    final cart = InstoreCartHelper.instance.getLocalCart();
    if (cart == null || cart.items.isEmpty) return null;

    return InstoreOrderPreviewParams(
      sellerId: cart.sellerId,
      couponCode: _appliedCouponCode,
      giftCardCode: _appliedGiftCardCode,
      loyaltyPointsApplied: _loyaltyPointsApplied,
      items: cart.items
          .map(
            (item) => InstoreCartParams(
              variantId: item.variantId,
              qnt: item.qnt,
            ),
          )
          .toList(),
    );
  }

  PaymentOption? get selectedPaymentOption {
    if (paymentOptions.isEmpty) return null;
    try {
      return paymentOptions.firstWhere((option) => option.selected);
    } catch (_) {
      return paymentOptions.first;
    }
  }

  void updatePaymentOptions() {
    paymentOptionsBloc.onUpdateData(paymentOptions);
  }

  void _initSelectedPayMethod() {
    if (paymentOptions.isEmpty) return;

    for (final option in paymentOptions) {
      option.selected = false;
      option.fakeSelected = false;
    }

    paymentOptions.first
      ..selected = true
      ..fakeSelected = true;
    selectedPayment = paymentOptions.first.paymentTypeKey;
    isWalletSelected.onUpdateData(false);
  }

  void _applyPaymentSelection(String? paymentTypeKey) {
    if (paymentOptions.isEmpty) return;

    for (final option in paymentOptions) {
      option.selected = false;
      option.fakeSelected = false;
    }

    final index = paymentOptions
        .indexWhere((option) => option.paymentTypeKey == paymentTypeKey);
    final target = index >= 0 ? paymentOptions[index] : paymentOptions.first;

    target
      ..selected = true
      ..fakeSelected = true;
    selectedPayment = target.paymentTypeKey;
    isWalletSelected.onUpdateData(false);
  }

  void _applyWalletSelection() {
    if (paymentOptions.isEmpty) return;

    for (final option in paymentOptions) {
      if (option.paymentTypeKey == PayTypeEnum.wallet.name) {
        option
          ..selected = true
          ..fakeSelected = true;
      } else {
        option
          ..selected = false
          ..fakeSelected = false;
      }
    }

    selectedPayment = PayTypeEnum.wallet.name;
    isWalletSelected.onUpdateData(true);
  }

  void paymentMethodSheet(BuildContext context) {
    if (paymentOptions.isEmpty) return;

    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) =>
          InstorePaymentMethodBottomSheetWidget(controller: this),
    );
  }

  void onChangePayment(int index) {
    for (final option in paymentOptions) {
      option.fakeSelected = false;
    }
    paymentOptions[index].fakeSelected = true;
    updatePaymentOptions();
  }

  void confirmSelectPayMethod(BuildContext context) {
    for (final option in paymentOptions) {
      option.selected = option.fakeSelected;
    }

    final selectedMethod =
        paymentOptions.firstWhere((option) => option.selected);

    if (selectedMethod.getPaymentType() == PayTypeEnum.wallet) {
      isWalletSelected.onUpdateData(true);
    } else {
      isWalletSelected.onUpdateData(false);
    }

    selectedPayment = selectedMethod.paymentTypeKey;
    updatePaymentOptions();
    Navigator.pop(context);
  }

  void switchApplyWalletBalance() {
    if (summary?.avilablePayWithWallet != true) {
      CustomToast.showSimpleToast(
        msg: tr('walletBalanceEmpty'),
        type: ToastType.error,
      );
      return;
    }

    if (isWalletSelected.state.data) {
      unSelectWalletPayMethod();
    } else if (isWalletSelectedAndBalanceEnough()) {
      selectWalletPayMethod();
    }

    updatePaymentOptions();
  }

  bool isWalletSelectedAndBalanceEnough() {
    final summaryData = summary;
    if (summaryData == null) return false;

    final balance = summaryData.walletBalanceValue;
    final totalPrice = summaryData.calculableTotal;

    if (selectedPayment == PayTypeEnum.wallet.name && totalPrice > balance) {
      CustomToast.showSimpleToast(
        msg: tr('walletBalanceEmpty'),
        type: ToastType.error,
      );
      return false;
    }

    return true;
  }

  void unSelectWalletPayMethod() {
    isWalletSelected.onUpdateData(false);

    for (final option in paymentOptions) {
      option
        ..selected = false
        ..fakeSelected = false;
    }

    final firstPayment = paymentOptions.first;
    firstPayment
      ..fakeSelected = true
      ..selected = true;
    selectedPayment = firstPayment.paymentTypeKey;
  }

  void selectWalletPayMethod() {
    for (final option in paymentOptions) {
      if (option.paymentTypeKey == PayTypeEnum.wallet.name) {
        option
          ..selected = true
          ..fakeSelected = true;
      } else {
        option
          ..selected = false
          ..fakeSelected = false;
      }
    }

    isWalletSelected.onUpdateData(true);
    selectedPayment = PayTypeEnum.wallet.name;
  }

  void changeTermsStatus(bool value) => conditionsCubit.onUpdateData(value);

  void giftCardSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => InstoreApplyGiftCardSheetWidget(controller: this),
    );
  }

  Future<void> applyCoupon() async {

    _appliedCouponCode = coupon.text.trim();
    _loyaltyPointsApplied = false;

    getIt<LoadingHelper>().showLoadingDialog();
    final success = await _fetchSummary(keepSelection: true);
    getIt<LoadingHelper>().dismissDialog();
    if (!success) {
      _appliedCouponCode = null;
      _loyaltyPointsApplied = null;
      applyPointsSwitchCubit.onUpdateData(summary?.loyaltyPointsApplied ?? false);
      return;
    }

    if (summary?.couponApplied == true) {
      CustomToast.showSimpleToast(
        msg: tr('success'),
        type: ToastType.success,
      );
    }
  }

  Future<void> switchApplyPoints() async {
    if ((loyaltyPointsBalanceBloc.state.data?.points ?? 0) <= 0 &&
        !applyPointsSwitchCubit.state.data) {
      return;
    }

    if (applyPointsSwitchCubit.state.data) {
      _loyaltyPointsApplied = false;
    } else {
      if (summary?.couponApplied == true) {
        _appliedCouponCode = null;
        coupon.clear();
      }
      _loyaltyPointsApplied = true;
    }

    getIt<LoadingHelper>().showLoadingDialog();
    final success = await _fetchSummary(keepSelection: true);
    getIt<LoadingHelper>().dismissDialog();
    if (!success) {
      _loyaltyPointsApplied = null;
      applyPointsSwitchCubit.onUpdateData(summary?.loyaltyPointsApplied ?? false);
      return;
    }
  }

  Future<void> getLoyaltyPointsBalance({bool refresh = true}) async {
    await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
        );
  }

  Future<void> applyGiftCard(BuildContext context) async {
    if (!(summary?.minimumOrderAmountStatus ?? true)) {
      CustomToast.showSimpleToast(
        msg:
            '${tr('addPurchases')}\n${summary?.minimumOrderAmount ?? 0} toCreateOrder ',
        type: ToastType.error,
      );
      return;
    }

    if (!giftCardFormKey.currentState!.validate()) return;

    FocusScope.of(context).unfocus();
    _appliedGiftCardCode = giftCardCode.text.trim();

    getIt<LoadingHelper>().showLoadingDialog();
    final success = await _fetchSummary(keepSelection: true);
    getIt<LoadingHelper>().dismissDialog();
    if (!success) {
      _appliedGiftCardCode = null;
      isGiftCardApplied = false;
      appliedGiftCardAmount = null;
      return;
    }

    isGiftCardApplied = true;
    CustomToast.showSimpleToast(msg: tr('giftCardApplied'));
  }

  void onGiftCardSheetSubmit(BuildContext context) {
    if (isGiftCardApplied) {
      Navigator.pop(context);
      return;
    }
    CustomToast.showSimpleToast(msg: tr('applyGiftCardFirst'));
  }

  String? _giftCardDiscountAmount(String? previousTotal, String newTotal) {
    final previous = double.tryParse(previousTotal?.replaceAll(',', '') ?? '');
    final current = double.tryParse(newTotal.replaceAll(',', ''));
    if (previous == null || current == null) return null;
    final discount = previous - current;
    if (discount <= 0) return null;
    return discount.toStringAsFixed(2);
  }

  String getTotal() => summary?.total ?? '0.00';

  InstoreCreateOrderParams? buildCreateOrderParams() {
    final preview = _buildPreviewParams();
    if (preview == null || selectedPayment == null) return null;

    return InstoreCreateOrderParams(
      preview: preview,
      paymentOption: selectedPayment!,
    );
  }

  Future<void> createOrder(BuildContext context) async {
    if (!(summary?.minimumOrderAmountStatus ?? true)) {
      CustomToast.showSimpleToast(
        msg:
            '${tr('addPurchases')}\n${summary?.minimumOrderAmount ?? 0} toCreateOrder ',
        type: ToastType.error,
      );
      return;
    }

    if (!conditionsCubit.state.data) {
      CustomToast.showSimpleToast(
        msg: tr('acceptTerms'),
        type: ToastType.error,
      );
      return;
    }

    if (!isWalletSelectedAndBalanceEnough()) return;

    InstoreCreateOrderParams? params = buildCreateOrderParams();
    if (params == null) {
      CustomToast.showSimpleToast(
        msg: tr('choosePayment'),
        type: ToastType.error,
      );
      return;
    }

    final data = await CreateInstoreOrder().call(params);
    if (data == null) return;

    await InstoreCartHelper.instance.deleteAllItemsFromCart();

    if (!context.mounted) return;

    if (data.transactionUrl != null) {
      await AutoRouter.of(context).push(
        PaymentRoute(
          transactionUrl: data.transactionUrl!,
          orderPaymentFromInstore: true,
        ),
      );
      return;
    }

    await AutoRouter.of(context).push(
      InstoreConfirmBuyingRoute(summary: data),
    );
  }

  Future<void> getOrderFees({bool fromRemote = true}) async {
    await GetOrderFees().call(fromRemote).then((value) {
      feesCubit.onUpdateData(value);
    });
  }

  void showFeesSheet(BuildContext context) {
    showModalBottomSheet<void>(
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
}
