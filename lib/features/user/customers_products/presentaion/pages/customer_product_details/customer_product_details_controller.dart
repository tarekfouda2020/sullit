part of 'customer_product_details_imports.dart';

class CustomerProductDetailsController {
  final GenericBloc<CustomersProductDetails?> productDetails =
      GenericBloc(null);

  CustomerProductDetailsController(int id) {
    getDetails(id, refresh: false);
    getDetails(id);
  }

  void getDetails(int id, {bool refresh = true}) async {
    var params = _genericParams(id, refresh);
    var result = await GetCustomerProductDetails().call(params);
    productDetails.onUpdateData(result);
  }

  GenericParams _genericParams(int id, bool refresh) {
    return GenericParams(
      id: id,
      refresh: refresh,
    );
  }
}
