part of 'classified_products_imports.dart';

class ClassifiesProductsController {
  final GenericBloc<ClassifiedProductsDomainModel?> classifiedProductsBloc =
      GenericBloc(null);

  ClassifiesProductsController() {
    getClassifiedProducts(refresh: false);
    getClassifiedProducts();
  }

  Future<void> getClassifiedProducts({bool refresh = true}) async {
    return await GetClassifiedProducts().call(refresh).then(
          (value) => classifiedProductsBloc.onUpdateData(value),
        );
  }

  void onAddProduct(BuildContext context) {
    var uploads = classifiedProductsBloc.state.data?.remainingUploads;
    if (uploads == 0) {
      CustomToast.showSimpleToast(msg: tr('purchasePackageValidation'));
      return;
    } else {
      AutoRouter.of(context).push(AddClassifiedProductRoute());
    }
  }

  void onChangeStatus(CusProduct model) async {
    var result = await SetChangeStatus().call(model.id);
    model.availableStatus = result;
    classifiedProductsBloc.onUpdateData(classifiedProductsBloc.state.data);
  }

  void onRemoveProduct(CusProduct model) async {
    var productCubit = classifiedProductsBloc.state.data;
    var productList = productCubit?.sectionsProducts.products;
    var result = await SetDeleteProduct().call(model.id);
    if (result.isNotEmpty) {
      CustomToast.showSimpleToast(msg: result);
      productList?.remove(model);
      classifiedProductsBloc.onUpdateData(productCubit);
    }
  }

  void onEditProduct(BuildContext context, CusProduct model) async {
    var result = await AutoRouter.of(context).push(
      EditClassifiedProductRoute(productModel: model),
    );
    if (result == true) {
      getClassifiedProducts();
    }
  }

  void onUpgradePackage(BuildContext context) async {
    await AutoRouter.of(context).push(const CustomersPackagesRoute());
    getClassifiedProducts();
  }
}
