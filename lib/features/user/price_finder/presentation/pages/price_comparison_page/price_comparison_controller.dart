part of 'price_comparison_imports.dart';

class PriceComparisonController {
  final GenericBloc<PriceFinderResult?> priceResultBloc = GenericBloc<PriceFinderResult?>(null);


  final GenericBloc<String> currentLocationDescriptionCubit = GenericBloc<String>("");

  Future<void> getPriceResults(int id) async {
    final result = await PriceSearchResult().call(id);
    priceResultBloc.onUpdateData(result);
  }



  Future<void> addProductToCart(BuildContext context, int variantId, int? branchId)async{
    var data = priceResultBloc.state.data;
     getIt<CartHelper>().addProductToCart(
        context, 1, variantId,
      branchId: branchId,
      onAddCartFunc: () {
        FacebookEventsHelper.instance.productAddToCart(
            id: data!.product.id,
            price: data.product.name);
        CustomToast.showSimpleToast(msg: "Product Added to you cart",type: ToastType.success);

    },);
  }



  void openStoreDetails(BuildContext context, int shopId){
    AutoRouter.of(context).push(SellerProductsPageRoute(shopId: shopId));
  }



  Future<void> getCurrentLocationName()async{
    var latLng =  getIt<LocationService>().userLocation;
    if(latLng!= null){
      var location  = await getIt<LocationService>().getAddressCityAndRegion(latLng);
      currentLocationDescriptionCubit.onUpdateData(location);
    }
  }



}
