part of 'home_main_imports.dart';

class HomeMainController {
  final GenericBloc<HomeDomainModel?> homeCubit = GenericBloc(null);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  HomeMainController(BuildContext context, HomeController controller) {
    controller.searchController.clear();
    controller.visibleSearch.onUpdateData(false);
    getHome(context, refresh: false);
    getHome(context);
  }

  void getHome(BuildContext context, {bool refresh = true}) async {
    var result = await GetHome().call(refresh);
    result?.flashSales.add(
        FlashSale(id: 0, title: "Coupons", date: DateTime.now(), banner: ""));
    homeCubit.onUpdateData(result);
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    homeCubit.onUpdateData(homeCubit.state.data);
  }

  void onAddToCompare(Product item) {
    item.isAddedTCompare = !item.isAddedTCompare!;
    homeCubit.onUpdateData(homeCubit.state.data);
  }


}
