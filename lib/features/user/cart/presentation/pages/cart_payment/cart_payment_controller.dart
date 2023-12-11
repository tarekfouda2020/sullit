// ignore_for_file: use_build_context_synchronously

part of 'cart_payment_imports.dart';

class CartPaymentController {
  final TextEditingController coupon = TextEditingController();
  final TextEditingController additionalInfo = TextEditingController();
  final GenericBloc<Shipping?> shippingBloc = GenericBloc(null);
  final GlobalKey<FormState> couponFormKey = GlobalKey();
  final GlobalKey<FormState> additionalFormKey = GlobalKey();
  final GenericBloc<int> paymentCubit = GenericBloc(0);
  final GenericBloc<bool> conditionsCubit = GenericBloc(false);
  String? selectedPayment;

  CartPaymentController(Shipping shipping) {
    shippingBloc.onUpdateData(shipping);
  }

  Future<void> applyCoupon() async {
    if (couponFormKey.currentState!.validate()) {
      var data = await ApplyCoupon().call(coupon.text);
      if (data != null) {
        CustomToast.showSimpleToast(msg: data.msg);
        shippingBloc.state.data!.summary = data.shipping.summary;
        shippingBloc.onUpdateData(shippingBloc.state.data);
      }
    }
  }

  Future<void> createOrder(BuildContext context) async {
    if (conditionsCubit.state.data) {
      _checkPayMethodSel();
      if (isBalanceEnough()) {
        var params = _orderParams();
        print("######${params.toJson()}");
        var data = await CreateOrder().call(params);
        if (data != null) {
          if (data.transactionUrl != null) {
            _goToPay(data.transactionUrl, context);
          } else {
            _confirmOrder(context, data);
          }
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
    AutoRouter.of(context).push(
      ConfirmationRoute(summary: data),
    );
  }

  void onChangePayment(Shipping model, int index) {
    for (var e in model.paymentOption!) {
      e.selected = false;
    }
    model.paymentOption![index].selected = true;
    selectedPayment = model.paymentOption![index].paymentTypeKey;
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
      paymentOption: shippingBloc.state.data!.paymentOption!
          .firstWhere((element) => element.selected)
          .paymentTypeKey,
      additionalInfo: additionalInfo.text,
    );
  }
}
