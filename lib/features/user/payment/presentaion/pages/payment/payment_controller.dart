// ignore_for_file: use_build_context_synchronously

part of 'payment_imports.dart';
class PaymentController {
  StreamSubscription<String>? urlState;
  FlutterWebviewPlugin flutterWebViewPlugin = FlutterWebviewPlugin();

  void onChangeUrl(
    BuildContext context,
  ) {
    urlState = flutterWebViewPlugin.onUrlChanged.listen(
      (String url) async {
        if (url.contains("combined_order_id")) {
          Future.delayed(const Duration(seconds: 2), () {
            int id = int.parse(url.split('combined_order_id=').last);
            AutoRouter.of(context).push(ConfirmationRoute(combinedId: id));
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
        }else if (url.contains('success')){
          flutterWebViewPlugin.close();
          CustomToast.showSimpleToast(msg: 'Payment done successfully', type: ToastType.success);
          AutoRouter.of(context).pushAndPopUntil(const ClassifiedProductsRoute(), predicate: (route) => false,);
        }
      },
    );
  }


}
