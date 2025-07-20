// ignore_for_file: use_build_context_synchronously

part of 'cart_payment_imports.dart';

class CartPaymentController {
  final TextEditingController coupon = TextEditingController();
  final TextEditingController additionalInfo = TextEditingController();
  final TextEditingController giftCardCode = TextEditingController();
  final GenericBloc<Shipping?> shippingBloc = GenericBloc(null);
  final GlobalKey<FormState> couponFormKey = GlobalKey();
  final GlobalKey<FormState> additionalFormKey = GlobalKey();
  final GenericBloc<int> paymentCubit = GenericBloc(0);
  final GenericBloc<bool> conditionsCubit = GenericBloc(false);
  final GenericBloc<bool> isWalletSelected = GenericBloc(false);
  final GenericBloc<bool> applyLoyaltyPoints = GenericBloc(false);
  String? selectedPayment;

  CartPaymentController(Shipping shipping) {
    shipping.paymentOption?.first.selected = true;
    selectedPayment = shipping.paymentOption?.first.paymentTypeKey;
    shippingBloc.onUpdateData(shipping);
    if (shipping.isAdminDiscount == true) {
      calculateDiscount();
    }
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
    if (conditionsCubit.state.data) {
      // _checkPayMethodSel();
      if (isBalanceEnough()) {
        var params = _orderParams();
        var data = await CreateOrder().call(params);
        if (data != null) {
          log("======================transactionUrl ${data.transactionUrl} =====================");
          if (data.transactionUrl != null) {
            _goToPay(data.transactionUrl, context);
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

  bool isBalanceEnough() {
    var summary = shippingBloc.state.data!.summary;
    var balance = summary.walletBalanceValue;
    var totalPrice = summary.calTotal;
    if (selectedPayment == "wallet" && totalPrice > balance) {
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

  void _goToPay(String? transactionUrl, BuildContext context) {
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
   selectedPayment = paymentOptions.firstWhere((element) => element.selected).paymentTypeKey;
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

}
