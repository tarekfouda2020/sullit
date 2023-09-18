// ignore_for_file: use_build_context_synchronously

part of 'customers_packages_imports.dart';

class CustomerPackagesController {
  final GenericBloc<List<CusPackage>> cusProducts = GenericBloc([]);
  final GlobalKey<DropdownSearchState> paymentMethodsDropKey = GlobalKey();
  PaymentMethodDomainModel? paymentMethod;

  CustomerPackagesController() {
    getCusPackage(refresh: false);
    getCusPackage();
  }

  void selectMethod(
      BuildContext context, PaymentMethodDomainModel model, int id) {
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

  Future<void> setPurchasePackageWithWallet(
      {required BuildContext context, required int id, String? method}) async {
    var params = _purchasePackageParams(id, method);
    var result = await SetPurchasePackage().call(params);
    if (result!.key == 'success') {
      Navigator.pop(context);
      CustomToast.showSimpleToast(msg: result.msg);
    }
  }

  Future<void> setPurchasePackage(
      {required BuildContext context, required int id, String? method}) async {
    var params = _purchasePackageParams(id, method);
    var result = await SetPurchasePackage().call(params);
    if (result!.data!.transactionUrl != null) {
      AutoRouter.of(context)
          .push(PaymentRoute(transactionUrl: result.data!.transactionUrl!));
    }
  }

  Future<void> getCusPackage({bool refresh = true}) async {
    return await GetCusPackages().call(refresh).then(
          (value) => cusProducts.onUpdateData(value),
        );
  }

  Future<List<PaymentMethodDomainModel>> getMethods(
      {bool param = false}) async {
    var data = await GetPaymentMethods().call(param);
    return data;
  }

  PurchasePackageParams _purchasePackageParams(int id, String? method) {
    return PurchasePackageParams(id: id, payMethod: method);
  }

  Future<void> showPaymentDialog(
      BuildContext context, int id, bool isFree) async {
    if (isFree) {
      setPurchasePackage(
        context: context,
        id: id,
      );
      return;
    }
    showDialog(
      context: context,
      builder: (context) => BuildPaymentDialog(
        controller: this,
        id: id,
      ),
    );
  }
}
