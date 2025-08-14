// ignore_for_file: use_build_context_synchronously

part of 'payment_imports.dart';

class PaymentController {
  StreamSubscription<String>? urlState;
  FlutterWebviewPlugin flutterWebViewPlugin = FlutterWebviewPlugin();

  void onChangeUrl(BuildContext context) {
    urlState = flutterWebViewPlugin.onUrlChanged.listen(
      (String url) async {
        if (url.contains("combined_order_id")) {
          int id = int.parse(url.split('combined_order_id=').last);
          flutterWebViewPlugin.close();
          // AutoRouter.of(context).push(ConfirmationRoute(combinedId: id));
          AutoRouter.of(context).push(CartConfirmBuyingRoute(combinedId: id));
        } else if (url.contains('Fail')) {
          flutterWebViewPlugin.close();
          CustomToast.showSimpleToast(
            msg: tr("paymentFailed"),
            type: ToastType.error,
          );
          AutoRouter.of(context).pop();
        } else if (url.contains('success')) {
          flutterWebViewPlugin.close();
          CustomToast.showSimpleToast(
            msg: tr('paymentDone'),
            type: ToastType.success,
          );
          AutoRouter.of(context).pop(true);
        }
      },
    );
  }
}
