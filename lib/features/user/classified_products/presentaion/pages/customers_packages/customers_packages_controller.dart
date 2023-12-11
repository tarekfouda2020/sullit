// ignore_for_file: use_build_context_synchronously

part of 'customers_packages_imports.dart';

class CustomerPackagesController {
  final GenericBloc<List<CusPackage>> cusProducts = GenericBloc([]);
  final GlobalKey<DropdownSearchState> paymentMethodsDropKey = GlobalKey();
  PaymentMethodDomainModel? paymentMethod;

  Future<void> getCusPackage({bool refresh = true}) async {
    return await GetCusPackages().call(refresh).then(
          (value) => cusProducts.onUpdateData(value),
        );
  }

  Future<List<PaymentMethodDomainModel>> getMethods(
      {bool refresh = false}) async {
    var data = await GetPaymentMethods().call(refresh);
    return data;
  }

  void selectMethod(
      BuildContext context, PaymentMethodDomainModel? model, int id) {
    if (model != null) {
      paymentMethod = model;
      if (model.paymentTypeKey == 'wallet') {
        setPurchasePackageWithWallet(
          context: context,
          id: id,
          method: model.paymentTypeKey,
        );
      } else {
        setPurchasePackage(
          context: context,
          id: id,
          method: model.paymentTypeKey,
        );
      }
    }
  }

  Future<void> setPurchasePackageWithWallet(
      {required BuildContext context, required int id, String? method}) async {
    var params = _packageParams(id, method);
    var result = await SetPurchasePackage().call(params);
    if (result!.key == 'success') {
      Navigator.pop(context);
      paymentMethod = null;
      CustomToast.showSimpleToast(msg: result.msg);
    }
  }

  Future<void> setPurchasePackage(
      {required BuildContext context, required int id, String? method}) async {
    var params = _packageParams(id, method);
    var result = await SetPurchasePackage().call(params);
    if (result!.data != null) {
      AutoRouter.of(context).pop().then((value) {
        AutoRouter.of(context)
            .push(PaymentRoute(transactionUrl: result.data!.transactionUrl!));
      });
    } else {
      AutoRouter.of(context).pop(true);
      CustomToast.showSimpleToast(
        msg: result.msg,
        type: ToastType.success,
      );
    }
  }

  Future<void> showPaymentDialog(BuildContext context, CusPackage model) async {
    if (model.isFree) {
      setPurchasePackage(context: context, id: model.id);
      return;
    } else {
      showDialog(
        context: context,
        builder: (context) => BuildPaymentDialog(
          controller: this,
          id: model.id,
        ),
      );
    }
  }

  PurchasePackageParams _packageParams(int id, String? method) {
    return PurchasePackageParams(
      id: id,
      payMethod: method,
    );
  }
}
