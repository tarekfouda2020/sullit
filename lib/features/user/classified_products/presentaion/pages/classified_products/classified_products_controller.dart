part of 'classified_products_imports.dart';
class ClassifiesProductsController {
  final GenericBloc<ClassifiedProductsDomainModel?> classifiedProductsBloc =
      GenericBloc(null);

  ClassifiesProductsController() {
    getClassifiedProducts();
  }

  Future<void> getClassifiedProducts({bool refresh = true}) async {
    return await GetClassifiedProducts().call(refresh).then(
          (value) => classifiedProductsBloc.onUpdateData(value),
        );
  }
}