part of 'payment_imports.dart';
class Payment extends StatefulWidget {
  final String transactionUrl ;
  const Payment({Key? key, required this.transactionUrl}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  PaymentController controller = PaymentController();

  @override
  void initState() {
    super.initState();
    controller.init(widget.transactionUrl, context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: DefaultAppBar(
        title: tr('payment'),
      ),
      body: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: WebViewWidget(controller: controller.webController),
      ),
    );
  }
}
