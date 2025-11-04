// ignore_for_file: use_build_context_synchronously

part of 'cart_payment_imports.dart';

class CartPaymentController {
  final TextEditingController coupon = TextEditingController();
  final TextEditingController additionalInfo = TextEditingController();
  final TextEditingController giftCardCode = TextEditingController();
  final GenericBloc<Shipping?> shippingBloc = GenericBloc(null);
  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);
  final GenericBloc<GiftCardApllieCartDomainModel?> giftCardBlocBloc = GenericBloc(null);
  final GlobalKey<FormState> couponFormKey = GlobalKey();
  final GlobalKey<FormState> additionalFormKey = GlobalKey();
  final GlobalKey<FormState> giftCardFormKey = GlobalKey();
  final GenericBloc<int> paymentCubit = GenericBloc(0);
  final GenericBloc<bool> conditionsCubit = GenericBloc(false);
  final GenericBloc<bool> isWalletSelected = GenericBloc(false);
  final GenericBloc<bool> applyPointsSwitchCubit = GenericBloc(false);
  final GenericBloc<bool> allowReplacementCubit = GenericBloc(false);
  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
  GenericBloc(null);
  String? selectedPayment;

  bool isGiftCardApplied = false;


  CartPaymentController(Shipping shipping) {
    shipping.paymentOption?.first.selected = true;
    selectedPayment = shipping.paymentOption?.first.paymentTypeKey;
   shipping.paymentOption?.first.fakeSelected = true;
   shipping.paymentOption?.first.selected = true;
    shippingBloc.onUpdateData(shipping);
    if (shipping.isAdminDiscount == true) {
      calculateDiscount();
    }
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
    getOrderFees(fromRemote: false);
    getOrderFees();
  }

  void calculateDiscount() {
    String subTotal =
        shippingBloc.state.data!.summary.subTotal.replaceAll("د.إ", "");
    String newSubTotal = subTotal.replaceAll(",", "");
    double subTotalVal = double.parse(newSubTotal);
    double discount =
        subTotalVal * (shippingBloc.state.data!.discountRate! / 100);
    shippingBloc.state.data?.discountVal = discount;
    double totalVal = shippingBloc.state.data!.summary.calTotal - discount;
    shippingBloc.state.data!.summary.total = "${totalVal.toString()}د.إ";
    shippingBloc.onUpdateData(shippingBloc.state.data);
  }

  void calcTotalAfterCoupon() {
    String total = shippingBloc.state.data!.summary.total.replaceAll("د.إ", "");
    String newTotal = total.replaceAll(",", "");
    double totalVal = double.parse(newTotal);
    double calTotal = totalVal - shippingBloc.state.data!.discountVal!;
    shippingBloc.state.data!.summary.total = "${calTotal.toString()}د.إ";
    shippingBloc.onUpdateData(shippingBloc.state.data);
  }

  Future<void> applyCoupon() async {
    if (couponFormKey.currentState!.validate()) {
      var data = await ApplyCoupon().call(coupon.text);
      if (data != null) {
        CustomToast.showSimpleToast(msg: data.msg);
        shippingBloc.state.data!.summary = data.shipping.summary;
        shippingBloc.onUpdateData(shippingBloc.state.data);
        if (shippingBloc.state.data!.isAdminDiscount == true) {
          calcTotalAfterCoupon();
        }
      }
    }
  }

  Future<void> createOrder(BuildContext context) async {
    if(!_isExistMinimumAmount){
      CustomToast.showSimpleToast(
        msg: "${tr("addPurchases")}\n${shippingBloc.state.data?.summary.minimumOrderAmountAmount} ${tr("to_create_order")} ",
        type: ToastType.error,
      );
      return ;
    }
    if (conditionsCubit.state.data) {
      // _checkPayMethodSel();
      if (isWalletSelectedAndBalanceEnough()) {
        var params = _orderParams();
        log("=======>>> allow replacement ${params.allowReplacement} <<<<<<<======");
        var data = await CreateOrder().call(params);
        if (data != null) {
          if (data.transactionUrl != null) {
            showOrderCreatedBottomSheet(data.transactionUrl!,context);
          } else {
            _confirmOrder(context, data);
          }
        } else {
          var countCubit = context.read<CountCubit>().state;
          context.read<CountCubit>().onUpdateCount(0, countCubit.discount);
          AutoRouter.of(context).push(HomeRoute(index: 0));
        }
      }
    } else {
      CustomToast.showSimpleToast(
        msg: tr('acceptTerms'),
        type: ToastType.error,
      );
    }
  }


  void showOrderCreatedBottomSheet(String url,BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return ConfirmOrderSheetWidget(controller: this, url: url,);
        });}

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

  void _confirmOrder(BuildContext context, OrderSummary data) {
    CustomToast.showSimpleToast(
      msg: tr('thanksForYourOrder'),
      type: ToastType.success,
    );
    // AutoRouter.of(context).push(
    //   ConfirmationRoute(summary: data),
    // );
    AutoRouter.of(context).push( CartConfirmBuyingRoute(summary: data));

  }

  void onChangePayment(Shipping model, int index) {
    for (var e in model.paymentOption!) {
      e.fakeSelected = false;
    }
    model.paymentOption![index].fakeSelected = true;
    shippingBloc.onUpdateData(shippingBloc.state.data);
  }

  void switchApplyWalletBalance(){
    /// switch apply wallet method in the bottom sheet and in switch toggle

    if(shippingBloc.state.data?.summary.avilablePayWithWallet == true){
      if(isWalletSelected.state.data){
        unSelectWalletPayMethod();
      }else if(isWalletSelectedAndBalanceEnough()){
        selectWalletPayMethod();
      }
      shippingBloc.onUpdateData(shippingBloc.state.data);
    }else{
      CustomToast.showSimpleToast(
          msg: tr('walletBalanceEmpty'), type: ToastType.error);
    }


  }



  void unSelectWalletPayMethod(){
    isWalletSelected.onUpdateData(false);
    List<PaymentOption> paymentOptions = shippingBloc.state.data!.paymentOption!;
    for(PaymentOption item in paymentOptions){
      item.selected = false;
      item.fakeSelected = false;
    }
    PaymentOption firstPayment = paymentOptions.first;
    firstPayment.fakeSelected = true;
    firstPayment.selected = true;
    selectedPayment = firstPayment.paymentTypeKey;
  }

  void selectWalletPayMethod(){
    for(PaymentOption item in shippingBloc.state.data!.paymentOption!){
      if(item.paymentTypeKey == PayTypeEnum.wallet.name){
        item.selected = true;
        item.fakeSelected = true;
      }else{
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

  CreateOrderParams _orderParams() {
    return CreateOrderParams(
      paymentOption: selectedPayment ?? "",
      additionalInfo: additionalInfo.text,
      giftCardCode: giftCardCode.text.trim(),
      allowReplacement: allowReplacementCubit.state.data ? 1 : 0
    );
  }


  void paymentMethodSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => PaymentMethodBottomSheetWidget(controller: this),
    );
  }

  void confirmSelectPayMethod(BuildContext context){
    List<PaymentOption> paymentOptions =  shippingBloc.state.data!.paymentOption!;
   for(var item in paymentOptions){
     item.selected = item.fakeSelected;
   }
    PaymentOption selectedMethod = paymentOptions.firstWhere((element) => element.selected);
   if(selectedMethod.getPaymentType() == PayTypeEnum.wallet){
     isWalletSelected.onUpdateData(true);
   }else{
     isWalletSelected.onUpdateData(false);
   }
   selectedPayment = selectedMethod.paymentTypeKey;
   shippingBloc.onUpdateData(shippingBloc.state.data);
   Navigator.pop(context);
  }


  void giftCardSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ApplyGiftCardSheet(controller: this),
    );
  }

  Future<void> applyLoyaltyPoint()async{
     await ApplyLoyaltyPoints().call(NoParams()).then((value) {
       if (value != null) {
         applyPointsSwitchCubit.onUpdateData(true);
         shippingBloc.state.data!.summary=value;
         shippingBloc.onUpdateData(shippingBloc.state.data);
       }
     });
  }

  Future<void> removeLoyaltyPoint()async{
    await RemoveLoyaltyPoints().call(NoParams()).then((value) {
      if (value != null) {
        applyPointsSwitchCubit.onUpdateData(false);
        shippingBloc.state.data!.summary=value;
        shippingBloc.onUpdateData(shippingBloc.state.data);
      }
    });
  }

  Future <void> switchApplyPoints()async{
    if((loyaltyPointsBalanceBloc.state.data?.points ?? 0) > 0 ) {
      if (applyPointsSwitchCubit.state.data) {
        removeLoyaltyPoint();
      } else {
        if(shippingBloc.state.data!.summary.couponApplied==true) {
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
     bool isPointsApplied = shippingBloc.state.data?.summary.loyaltyPointsApplied == true;
     if(isPointsApplied){
       applyPointsSwitchCubit.onUpdateData(true);
     }
  }

  Future<void> applyGiftCard(BuildContext context)async{
    if(!_isExistMinimumAmount){
      CustomToast.showSimpleToast(
        msg: "${tr("addPurchases")}\n${shippingBloc.state.data?.summary.minimumOrderAmountAmount} ${"toCreateOrder"} ",
        type: ToastType.error,
      );
      return ;
    }

    if(giftCardFormKey.currentState!.validate()){
      FocusScope.of(context).unfocus();
      await ApplyGiftCard().call(ApplyGiftCardParams(giftCardCode: giftCardCode.text)).then((value) {
        if (value != null) {
          isGiftCardApplied = true;
          shippingBloc.state.data!.summary = value.summary;
          shippingBloc.state.data!.summary.appliedGiftCard = value.appliedGiftCard;
          shippingBloc.onUpdateData(shippingBloc.state.data);
          CustomToast.showSimpleToast(msg: tr("giftCardApplied"));
        }
      });
    }
  }

  Future<void> removeCoupon()async{
    await RemoveCoupon().call(NoParams()).then((value) {
      if (value != null) {
        shippingBloc.state.data!.summary=value;
        shippingBloc.onUpdateData(shippingBloc.state.data);
      }
    });
  }


  void navigateToHome (BuildContext context)=> AutoRouter.of(context).pushAndPopUntil(
    HomeRoute(index: 0),
    predicate: (route) => false,
  );


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
      return FeesSheetWidget(feesCubit: feesCubit,showTech: true,showDelivery: false,);
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


  bool get _isExistMinimumAmount => shippingBloc.state.data?.summary.minimumOrderAmountStatus == true;


}
