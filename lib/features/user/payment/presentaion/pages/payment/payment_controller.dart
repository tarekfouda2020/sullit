part of 'payment_imports.dart';
class PaymentController {
  StreamSubscription<String>? urlState;
  FlutterWebviewPlugin flutterWebViewPlugin = FlutterWebviewPlugin();

  void onChangeUrl(
    BuildContext context,
  ) {
    urlState = flutterWebViewPlugin.onUrlChanged.listen(
      (String url) {
        if (url.contains("combined_order_id")) {
          Future.delayed(const Duration(seconds: 2), () {
            String id = url.split('combined_order_id=').last;
            AutoRouter.of(context).push(ConfirmationRoute());
            flutterWebViewPlugin.close();
          });
        } else if (url.contains('Fail')) {
          Future.delayed(
            const Duration(seconds: 3),
            () {
              flutterWebViewPlugin.close();
              Navigator.pop(context);
            },
          );
        }
      },
    );
  }


}
