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

  void navigateToVideoViewer(BuildContext context) {
    var productModel = productDetails.state.data?.customerProduct;

    switch (productModel?.videoProvider) {
      case "youtube":
        AutoRouter.of(context).push(YoutubeViewerRoute(
          videoLink: productModel?.videoLink ?? "",
        ));
        break;
      case "dailymotion":
        AutoRouter.of(context).push(MotionViewerRoute(
          videoLink: productModel?.videoLink ?? "",
        ));
        break;
      default:
        AutoRouter.of(context).push(VimeoViewerRoute(
          videoLink: productModel?.videoLink ?? "",
        ));
        break;
    }
  }

  GenericParams _genericParams(int id, bool refresh) {
    return GenericParams(
      id: id,
      refresh: refresh,
    );
  }
}
