// ignore_for_file: use_build_context_synchronously

part of 'payment_imports.dart';

class PaymentController {
  late final WebViewController webController;

  int combinedOrderId = 0;

  void init(String initialUrl, BuildContext context) {
    webController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        _navigationDelegate(context),
      )
      ..loadRequest(Uri.parse(initialUrl));
  }

  NavigationDelegate _navigationDelegate(BuildContext context) {
    if(Platform.isIOS){
      return NavigationDelegate(
        onNavigationRequest: (NavigationRequest request) {
          handleUrlChange(context, request.url);
          return NavigationDecision.navigate;
        },
      );
    }else{
      return NavigationDelegate(
        onPageStarted: (url) {
          handleUrlChange(context, url);
        },
      );
    }
  }

  Future<void> handleUrlChange(BuildContext context, String url) async{
    log("====>>>---- $url ----<<<<====");
    if (url.contains("combined_order_id")) {
      combinedOrderId = int.parse(url.split('combined_order_id=').last);
      // AutoRouter.of(context).push(ConfirmationRoute(combinedId: id));
      AutoRouter.of(context).push(CartConfirmBuyingRoute(combinedId: combinedOrderId));
    } else if (url.contains('Fail')) {
      CustomToast.showSimpleToast(
        msg: tr("paymentFailed"),
        type: ToastType.error,
      );
      AutoRouter.of(context).pop();
    } else if (url.contains('success')) {
      log("====>>>---- $url ----<<<<====");
      if(Platform.isIOS){
       await Future.delayed(const Duration(seconds: 3));
      }
      CustomToast.showSimpleToast(
        msg: tr('paymentDone'),
        type: ToastType.success,
      );
      if(combinedOrderId == 0){
        AutoRouter.of(context).pop(true);
      }
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
