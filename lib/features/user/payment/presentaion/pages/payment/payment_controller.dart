// ignore_for_file: use_build_context_synchronously

part of 'payment_imports.dart';

class PaymentController {
  late final WebViewController webController;

  void init(String initialUrl, BuildContext context) {
    webController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            handleUrlChange(context, url);
          },
        ),
      )
      ..loadRequest(Uri.parse(initialUrl));
  }

  void handleUrlChange(BuildContext context, String url) {
    if (url.contains("combined_order_id")) {
      int id = int.parse(url.split('combined_order_id=').last);
      // AutoRouter.of(context).push(ConfirmationRoute(combinedId: id));
      AutoRouter.of(context).push(CartConfirmBuyingRoute(combinedId: id));
    } else if (url.contains('Fail')) {
      CustomToast.showSimpleToast(
        msg: tr("paymentFailed"),
        type: ToastType.error,
      );
      AutoRouter.of(context).pop();
    } else if (url.contains('success')) {
      CustomToast.showSimpleToast(
        msg: tr('paymentDone'),
        type: ToastType.success,
      );
      AutoRouter.of(context).pop(true);
    }
  }



  void showConfirmPopDialog(BuildContext context){
   showDialog(context: context, builder: (context) {
     return  ConfirmLeavingDialogWidget(controller: this);
   },);
  }


  void onPressStay(BuildContext context){
    Navigator.pop(context);
  }



  void onPressLeave(BuildContext context){
   AutoRouter.of(context).pushAndPopUntil(
      HomeRoute(index: 0),
     predicate: (route) => route.settings.name == HomeRoute.name,
   );
  }



}
