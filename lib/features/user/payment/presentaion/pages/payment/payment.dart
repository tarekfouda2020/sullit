part of 'payment_imports.dart';
class Payment extends StatefulWidget {
  final String transactionUrl ;
  final bool orderPaymentFromHome ;
  const Payment({Key? key, required this.transactionUrl, this.orderPaymentFromHome = false}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  PaymentController controller = PaymentController();

  @override
  void initState() {
    super.initState();
    controller.init(widget.transactionUrl, context,orderPayFromHome: widget.orderPaymentFromHome);
  }


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: DefaultAppBar(
          title: tr('payment'),
          onBack: () => controller.onPressBack(context),
        ),
        body: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: WebViewWidget(controller: controller.webController),
        ),
      ),
    );
  }
}
