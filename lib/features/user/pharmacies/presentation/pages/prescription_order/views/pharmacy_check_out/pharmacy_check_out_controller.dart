part of 'pharmacy_check_out_imports.dart';

// ignore_for_file: use_build_context_synchronously


class PharmacyCheckOutController {
  final GlobalKey<FormState> couponFormKey = GlobalKey();
  final GlobalKey<FormState> additionalFormKey = GlobalKey();
  final GlobalKey<FormState> giftCardFormKey = GlobalKey();

  final TextEditingController coupon = TextEditingController();
  final TextEditingController additionalInfo = TextEditingController();
  final TextEditingController giftCardCode = TextEditingController();
  final TextEditingController driverTipCtr = TextEditingController();
  final TextEditingController driverNotesCtr = TextEditingController();
  final TextEditingController pickerNotesCtr = TextEditingController();

  final GenericBloc<Shipping?> shippingBloc = GenericBloc<Shipping?>(null);
  final GenericBloc<FessMechanismModel?> feesCubit =
  GenericBloc<FessMechanismModel?>(null);
  final GenericBloc<GiftCardApllieCartDomainModel?> giftCardBlocBloc =
  GenericBloc<GiftCardApllieCartDomainModel?>(null);
  final GenericBloc<int> paymentCubit = GenericBloc<int>(0);
  final GenericBloc<bool> conditionsCubit = GenericBloc<bool>(false);
  final GenericBloc<bool> isWalletSelected = GenericBloc<bool>(false);
  final GenericBloc<bool> applyPointsSwitchCubit = GenericBloc<bool>(false);
  final GenericBloc<bool> allowReplacementCubit = GenericBloc<bool>(false);
  final GenericBloc<List<PaymentOption>> paymentOptionsBloc = GenericBloc([]);
  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
  GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);
  final GenericBloc<List<DeliveryInstructionModel>> instructionsCubit =
  GenericBloc<List<DeliveryInstructionModel>>([]);
  final GenericBloc<List<DriverTipsModel>> tipsListCubit =
  GenericBloc<List<DriverTipsModel>>([]);

  String? selectedPayment;

  bool isGiftCardApplied = false;

  bool fromOrderDetails = false;

  final PharmacyCheckoutParams? checkoutParams;

  final int? confirmOrderId;

  final List<DriverTipsModel> _tipsList = [
    DriverTipsModel(amount: "2", isSelect: true),
    DriverTipsModel(amount: "3"),
    DriverTipsModel(amount: "5"),
    DriverTipsModel(amount: "custom", isCustom: true),
  ];

  PharmacyCheckOutController(Shipping? shipping, this.checkoutParams, this.confirmOrderId, {this.fromOrderDetails = false}) {
    initData(shipping);
    if (shipping?.isAdminDiscount == true) {
      calculateDiscount();
    }
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
    getOrderFees(fromRemote: false);
    getOrderFees();
    getInstructions(fromRemote: false);
    getInstructions();
    fetchPaymentOptions(refresh: false);
    fetchPaymentOptions();
  }


  Future<void> initData(Shipping? shipping) async {
    if(shipping!= null){
      shippingBloc.onUpdateData(shipping);
    } else if(confirmOrderId != null){
      getSummaryData();
    }
  }



  Future<void> getSummaryData()async{
    var params = _confirmParams(confirmOrderId!);
    var data = await GetPharmacyConfirmSummary().call(params);
    if(data!= null){
      shippingBloc.onUpdateData(
          Shipping(
              summary: data.summary,
              paymentOption: []
          )
      );
    }
  }

  PharmacyConfirmSummaryParams _confirmParams(int id){
    return PharmacyConfirmSummaryParams(
      couponCode: coupon.text ,
      applyLoyaltyPoints: applyPointsSwitchCubit.state.data ? 1 : 0,
      id: id
    );
  }

  void initDataFromLastRoute(
      CartCheckOutSavedData pageSavedData, Shipping shipping) {
    giftCardCode.text = pageSavedData.giftCardCode ?? "";
    coupon.text = pageSavedData.voucherCode ?? "";
    driverNotesCtr.text = pageSavedData.driverNotes ?? "";
    pickerNotesCtr.text = pageSavedData.pickerNotes ?? "";
    allowReplacementCubit.onUpdateData(pageSavedData.allowReplacement ?? false);
    conditionsCubit.onUpdateData(pageSavedData.termsAccept ?? false);
    bool noPayOptionsSelected =
    pageSavedData.orderSummaryCheckOut!.paymentOption!.every(
          (element) => !element.selected,
    );
    if (noPayOptionsSelected) {
      _initSelectedPayMethod(shipping);
    }
  }

  void _initSelectedPayMethod(Shipping shipping) {
    shipping.paymentOption?.first.selected = true;
    selectedPayment = shipping.paymentOption?.first.paymentTypeKey;
    shipping.paymentOption?.first.fakeSelected = true;
    shipping.paymentOption?.first.selected = true;
  }

  void calculateDiscount() {
    String subTotal =
    shippingBloc.state.data!.summary.subTotal.replaceAll("", "");
    String newSubTotal = subTotal.cleanNumber();
    double subTotalVal = double.parse(newSubTotal);
    double discount =
        subTotalVal * (shippingBloc.state.data!.discountRate! / 100);
    shippingBloc.state.data?.discountVal = discount;
    double totalVal = shippingBloc.state.data!.summary.calTotal - discount;
    shippingBloc.state.data!.summary.total = totalVal.toString();
    updateData();
  }

  void calcTotalAfterCoupon() {
    String total = shippingBloc.state.data!.summary.total.cleanNumber();
    String newTotal = total.cleanNumber();
    double totalVal = double.parse(newTotal);
    double calTotal = totalVal - shippingBloc.state.data!.discountVal!;
    shippingBloc.state.data!.summary.total = calTotal.toString();
    updateData();
  }

  Future<void> applyCoupon() async {
    if (couponFormKey.currentState!.validate()) {
      if (confirmOrderId != null) {
        await getSummaryData();
      } else {
        checkoutParams?.giftCardCode = null;
        checkoutParams?.applyLoyaltyPoints = null;
        checkoutParams?.couponCode = coupon.text;
        await getRemoteData();
      }
      if (shippingBloc.state.data?.summary.couponApplied == true) {
        CustomToast.showSimpleToast(msg: tr("couponApplied"), type: ToastType.success);
      }
    }
  }

  Future<void> createOrder(BuildContext context) async {
    if (conditionsCubit.state.data) {
      if (isWalletSelectedAndBalanceEnough()) {
        if (confirmOrderId != null) {
          submitConfirmOrder(context);
        } else {
          submitToCreateOrder();
        }
      }
    } else {
      CustomToast.showSimpleToast(
        msg: tr('acceptTerms'),
        type: ToastType.error,
      );
    }
  }

  Future<void> submitConfirmOrder(BuildContext ctx) async {
    PharmacyConfirmOrderDomainModel? data =
        await ConfirmPharmacyOrder().call(_confirmOrderParams());
    if (data != null) {
      if (data.transactionUrl != null) {
        goToPay(data.transactionUrl!, ctx);
      } else {
        _onPharmacyOrderConfirmed(ctx, data);
      }
    }
  }

  PharmacyConfirmOrderParams _confirmOrderParams() {
    return PharmacyConfirmOrderParams(
      orderId: confirmOrderId!,
      paymentOption: paymentOptionsBloc.state.data
          .firstWhere((element) => element.selected)
          .paymentTypeKey,
      wallet: isWalletSelected.state.data ? 1 : 0,
      applyLoyaltyPoints: applyPointsSwitchCubit.state.data ? 1 : 0,
      couponCode: coupon.text.isNotEmpty ? coupon.text : null,
      instructions: _selectedInstructions(),
      driverNotes: driverNotesCtr.text.trim(),
      pickerNotes: pickerNotesCtr.text.trim(),
    );
  }

  void _onPharmacyOrderConfirmed(BuildContext context, PharmacyConfirmOrderDomainModel data) {
    CustomToast.showSimpleToast(msg: tr('thanksForYourOrder'), type: ToastType.success);
    AutoRouter.of(context).push(PharmacyOrderDetailsRoute(
        id: data.id ?? confirmOrderId!,
        fromCheckout: true
    ));

  }





  Future<void> submitToCreateOrder() async {
    BuildContext ctx = getIt<GlobalContext>().context();
    PharmacyCreateOrderParams params = _orderParams();
    // log("====>>>>>> params is ${params.toJson()} =====");
    OrderSummaryDomainModel? data = await CreatePharmacyOrder().call(params);
    if (data != null) {
      if (data.transactionUrl != null) {
        goToPay(data.transactionUrl!, ctx);
        // showOrderCreatedBottomSheet(data.transactionUrl!,ctx);
      } else {
        _confirmOrder(ctx,data);
      }
    } else {
      AutoRouter.of(ctx).push(HomeRoute(index: 0));
    }
  }

  void showOrderCreatedBottomSheet(String url, BuildContext context) {
    // showModalBottomSheet(
    //     context: context,
    //     shape: const RoundedRectangleBorder(
    //       borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    //     ),
    //     backgroundColor: Colors.white,
    //     builder: (BuildContext context) {
    //       return ConfirmOrderSheetWidget(
    //         controller: this,
    //         url: url,
    //       );
    //     });
  }

  bool isWalletSelectedAndBalanceEnough() {
    var summary = shippingBloc.state.data!.summary;
    var balance = summary.walletBalanceValue;
    var totalPrice = summary.calTotal;
    if (selectedPayment == PayTypeEnum.wallet.name && totalPrice > balance) {
      CustomToast.showSimpleToast(
          msg: tr('walletBalanceEmpty'), type: ToastType.error);
      return false;
    } else {
      return true;
    }
  }

  void _confirmOrder(BuildContext context,OrderSummaryDomainModel data) {
    CustomToast.showSimpleToast(
      msg: tr('thanksForYourOrder'),
      type: ToastType.success,
    );
    AutoRouter.of(context).push( OrderSuccessRoute(summary: data));
  }

  void onChangePayment(PaymentOption model, int index) {
    var data = paymentOptionsBloc.state.data;
    for (var e in data) {
      e.fakeSelected = false;
    }
    data[index].fakeSelected = true;
    paymentOptionsBloc.onUpdateData(data);
  }

  void switchApplyWalletBalance() {
    /// switch apply wallet method in the bottom sheet and in switch toggle

    if (shippingBloc.state.data?.summary.avilablePayWithWallet == true) {
      if (isWalletSelected.state.data) {
        unSelectWalletPayMethod();
      } else if (isWalletSelectedAndBalanceEnough()) {
        selectWalletPayMethod();
      }
      updateData();
    } else {
      CustomToast.showSimpleToast(
          msg: tr('walletBalanceEmpty'), type: ToastType.error);
    }
  }

  void unSelectWalletPayMethod() {
    isWalletSelected.onUpdateData(false);
    List<PaymentOption> paymentOptions =
    paymentOptionsBloc.state.data;
    for (PaymentOption item in paymentOptions) {
      item.selected = false;
      item.fakeSelected = false;
    }
    PaymentOption firstPayment = paymentOptions.first;
    firstPayment.fakeSelected = true;
    firstPayment.selected = true;
    selectedPayment = firstPayment.paymentTypeKey;
  }

  void selectWalletPayMethod() {
    for (PaymentOption item in paymentOptionsBloc.state.data) {
      if (item.paymentTypeKey == PayTypeEnum.wallet.name) {
        item.selected = true;
        item.fakeSelected = true;
      } else {
        item.selected = false;
        item.fakeSelected = false;
      }
    }
    isWalletSelected.onUpdateData(true);
    selectedPayment = PayTypeEnum.wallet.name;
  }

  void goToPay(String? transactionUrl, BuildContext context) {
    AutoRouter.of(context).push(
      PaymentRoute(
        transactionUrl: transactionUrl!,
      ),
    );
    return;
  }

  void _checkPayMethodSel() {
    var shipping = shippingBloc.state.data;
    if (shipping!.paymentOption!.where((element) => element.selected).isEmpty) {
      CustomToast.showSimpleToast(
        msg: tr('choosePayment'),
        type: ToastType.success,
      );
      return;
    }
  }

  PharmacyCreateOrderParams _orderParams() {
    return PharmacyCreateOrderParams(
        paymentOption: paymentOptionsBloc.state.data
            .firstWhere((element) => element.selected)
            .paymentTypeKey,
        giftCardCode: checkoutParams?.giftCardCode,
      couponCode: checkoutParams?.couponCode,
      shippingInfo: checkoutParams?.shippingInfo ?? <PharmacyShippingInfo>[],
      addressId: checkoutParams?.addressId,
        instructions: _selectedInstructions(),
        driverNotes: driverNotesCtr.text.trim(),
        pickerNotes: pickerNotesCtr.text.trim(),
        applyLoyaltyPoints: applyPointsSwitchCubit.state.data ? 1 : 0,
    );
  }

  List<DeliveryInstructionModel> _selectedInstructions() {
    List<DeliveryInstructionModel> data = instructionsCubit.state.data;
    if (data.any((element) => element.isSelect)) {
      return data.where((element) => element.isSelect).toList();
    } else {
      return <DeliveryInstructionModel>[];
    }
  }

  void paymentMethodSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => PharmacyPaymentMethodBottomSheetWidget(controller: this),
    );
  }

  void confirmSelectPayMethod(BuildContext context) {
    List<PaymentOption> paymentOptions =
    paymentOptionsBloc.state.data;
    for (var item in paymentOptions) {
      item.selected = item.fakeSelected;
    }
    PaymentOption selectedMethod =
    paymentOptions.firstWhere((element) => element.selected);
    if (selectedMethod.getPaymentType() == PayTypeEnum.wallet) {
      isWalletSelected.onUpdateData(true);
    } else {
      isWalletSelected.onUpdateData(false);
    }
    selectedPayment = selectedMethod.paymentTypeKey;
    updateData();
    Navigator.pop(context);
  }

  void giftCardSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => PharmacyApplyGiftCardSheet(controller: this),
    );
  }

  Future<void> applyLoyaltyPoint() async {
    if (confirmOrderId != null) {
      await getSummaryData();
    } else {
      checkoutParams?.couponCode = null;
      checkoutParams?.giftCardCode = null;
      checkoutParams?.applyLoyaltyPoints = 1;
      await getRemoteData();
    }
  }

  Future<void> removeLoyaltyPoint() async {
    if (confirmOrderId != null) {
      await getSummaryData();
    } else {
      checkoutParams?.applyLoyaltyPoints = null;
      await getRemoteData();
    }
  }

  Future<void> switchApplyPoints() async {
    if ((loyaltyPointsBalanceBloc.state.data?.points ?? 0) > 0) {
      if (applyPointsSwitchCubit.state.data) {
        removeLoyaltyPoint();
      } else {
        if (shippingBloc.state.data!.summary.couponApplied == true) {
          await removeCoupon();
        }
        applyLoyaltyPoint();
      }
    }
  }

  Future<void> getLoyaltyPointsBalance({bool refresh = true}) async {
    await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
    );
    bool isPointsApplied =
        shippingBloc.state.data?.summary.loyaltyPointsApplied == true;
    if (isPointsApplied) {
      applyPointsSwitchCubit.onUpdateData(true);
    }
  }

  Future<void> applyGiftCard(BuildContext context) async {
    if (!_isExistMinimumAmount) {
      CustomToast.showSimpleToast(
        msg:
        "${tr("addPurchases")}\n${shippingBloc.state.data?.summary.minimumOrderAmountAmount} ${"toCreateOrder"} ",
        type: ToastType.error,
      );
      return;
    }

    if (giftCardFormKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      if (confirmOrderId != null) {
        await getSummaryData();
      } else {
        checkoutParams?.couponCode = null;
        checkoutParams?.applyLoyaltyPoints = null;
        checkoutParams?.giftCardCode = giftCardCode.text;
        await getRemoteData();
      }
      if (shippingBloc.state.data?.summary.appliedGiftCard != null) {
        CustomToast.showSimpleToast(msg: tr("giftCardApplied",),
          type: ToastType.success,
        );
      }
    }
  }

  Future<void> removeCoupon() async {
    if (confirmOrderId != null) {
      await getSummaryData();
    } else {
      checkoutParams?.couponCode = null;
      await getRemoteData();
    }
  }

  void navigateToHome(BuildContext context) =>
      AutoRouter.of(context).pushAndPopUntil(
        HomeRoute(index: 0),
        predicate: (route) => false,
      );

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

  void showReplacementInfoSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const ReplacementAlertSheet();
      },
    );
  }

  Future<void> showReplacementAlertSheet(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      isDismissible: false,
      useRootNavigator: true,
      builder: (context) {
        return PharmacyRequestReplaceSheetWidget(controller: this);
      },
    );
  }

  void refuseReplacement(BuildContext context) {
    allowReplacementCubit.onUpdateData(false);
    Navigator.pop(context);
  }

  void confirmReplacement(BuildContext context) {
    Navigator.pop(context);
  }

  bool get _isExistMinimumAmount =>
      shippingBloc.state.data?.summary.minimumOrderAmountStatus == true;

  void selectDriverTip(DriverTipsModel model) {
    var data = tipsListCubit.state.data;
    if (model.isSelect) {
      model.isSelect = false;
    } else {
      for (var item in data) {
        item.isSelect = false;
      }
      model.isSelect = true;
    }
    tipsListCubit.onUpdateData(data);
  }

  bool showRaiderTipsField() {
    var data = tipsListCubit.state.data;
    var selected = data.where((element) => element.isSelect).toList();
    if (selected.isNotEmpty) {
      return data.singleWhere((element) => element.isSelect).isCustom;
    } else {
      return false;
    }
  }

  double getDriverTip() {
    var data = tipsListCubit.state.data;
    var selected =
    data.where((element) => element.isSelect && !element.isCustom).toList();
    if (selected.isNotEmpty) {
      updateData();
      return double.parse(selected.first.amount);
    } else {
      updateData();

      return double.parse(
          driverTipCtr.text.isNotEmpty ? driverTipCtr.text : "0.0");
    }
  }

  double getTotal() {
    return double.parse(shippingBloc.state.data!.summary.total.cleanNumber());
    //  ShippingSummary summary = shippingBloc.state.data!.summary;
    //  double subTotal = double.parse(summary.subTotal);
    //  double totalFeesAmount = summary.getFeesTotal;
    //
    // if (summary.couponApplied == true ){
    //   subTotal = subTotal -  double.parse(summary.couponDiscount);
    //  }
    //
    //  if (summary.loyaltyPointsApplied == true ){
    //    subTotal = subTotal -  double.parse(summary.loyaltyPointsValue ?? '0.0');
    //  }
    //
    //  double amount = subTotal+totalFeesAmount;
    // if(amount > 0){
    //   return amount;
    // }else{
    //   return 0;
    // }
  }

  Future<void> getInstructions({bool fromRemote = true}) async {
    List<DeliveryInstructionModel> result =
    await GetDeliveryInstructions().call(fromRemote);
    instructionsCubit.onUpdateData(result);
  }

  void selectInstructions(DeliveryInstructionModel model) {
    model.isSelect = !model.isSelect;
    instructionsCubit.onUpdateData(instructionsCubit.state.data);
  }

  void switchReplacementAccept(BuildContext context, bool newValue) {
    allowReplacementCubit.onUpdateData(newValue);
    if (newValue) {
      showReplacementAlertSheet(context);
    }
  }





  void changeTermsStatus(bool value) {
    conditionsCubit.onUpdateData(value);
  }

  void updateData() {
    shippingBloc.onUpdateData(shippingBloc.state.data);
  }

  Future<void> getRemoteData() async {
    if (checkoutParams == null) return;
    final result = await GetCartSummary().call(checkoutParams!);
    if (result != null) {
      shippingBloc.onUpdateData(result);
      if (result.isAdminDiscount == true) {
        calculateDiscount();
      }
      applyPointsSwitchCubit.onUpdateData(result.summary.loyaltyPointsApplied == true);
      isGiftCardApplied = result.summary.appliedGiftCard != null;
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
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FullTierNameWidget(
          description: description,
          title: title,
        );
      },
    );
  }


  Future<void> fetchPaymentOptions({bool refresh = true}) async {
    var result = await GetPaymentOptions().call(refresh);
    result.first.selected = true;
    result.first.fakeSelected = true;
    paymentOptionsBloc.onUpdateData(result);
  }



}
