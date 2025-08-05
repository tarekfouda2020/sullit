part of 'pro_offers_imports.dart';


class ProOffersController{

  final GenericBloc<List<Product>> vipOffersCubit = GenericBloc([]);

  void getArrival({bool refresh = true}) async {
    var result = await GetVipOffers().call(refresh);
    vipOffersCubit.onUpdateData(result);
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    vipOffersCubit.onUpdateData(vipOffersCubit.state.data);
  }


}