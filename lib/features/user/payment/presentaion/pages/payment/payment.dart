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
    controller.onChangeUrl(context);
    super.initState();
  }

  @override
  void dispose() {
    controller.urlState!.cancel();
    controller.flutterWebViewPlugin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: WebviewScaffold(
        withZoom: true,
        url: widget.transactionUrl,
        appBar:  DefaultAppBar(
          title: tr('payment'),
        ),
      ),
    );
  }
}
