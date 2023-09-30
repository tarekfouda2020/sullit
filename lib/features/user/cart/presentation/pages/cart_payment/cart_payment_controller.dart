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
    _checkPayMethodSel();
    _checkConditionAccept();
    var params = _orderParams();
    var data = await CreateOrder().call(params);
    if (data != null) {
      if (data.transactionUrl != null) {
        _goToPay(
          data.transactionUrl,
          context,
        );
      } else {
        _confirmOrder(context, data);
      }
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

  void _checkConditionAccept() {
    if (!conditionsCubit.state.data) {
      CustomToast.showSimpleToast(
        msg: tr('acceptTerms'),
        type: ToastType.error,
      );
      return;
    }
  }

  void _checkPayMethodSel() {
    if (shippingBloc.state.data!.paymentOption!
        .where((element) => element.selected)
        .isEmpty) {
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
