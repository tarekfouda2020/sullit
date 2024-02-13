// ignore_for_file: use_build_context_synchronously

part of 'home_main_imports.dart';

class HomeMainController {
  final GenericBloc<HomeDomainModel?> homeCubit = GenericBloc(null);
  final GenericBloc<List<ProductSections>> sectionsCubit = GenericBloc([]);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController scrollController = ScrollController();
  final GenericBloc<bool> scrollCubit = GenericBloc(true);
  List<ProductSections> allSections = [];
  int currentPage = 1;
  int pageSize = 5;

  HomeMainController(BuildContext context, HomeController controller) {
    controller.searchController.clear();
    controller.visibleSearch.onUpdateData(false);
    getHome(context, refresh: false);
    getHome(context);
    getProductSections();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      getProductSections();
    }
  }

  void getHome(BuildContext context, {bool refresh = true}) async {
    var result = await GetHome().call(refresh);
    context
        .read<CountCubit>()
        .onUpdateCount(result!.cartCount, result.favCount);
    // result?.flashSales.add(FlashSale(id: 0, title: tr('coupons'), date: DateTime.now(), banner: ""));
    homeCubit.onUpdateData(result);
  }

  Future<void> getProductSections() async {
    if (sectionsCubit.state.data.length / 5 == currentPage - 1 ||
        sectionsCubit.state.data.isEmpty) {
      var result = await GetProductSections().call(currentPage);
      final isLastPage = result.length < pageSize;
      if (currentPage == 1) {
        sectionsCubit.onUpdateData([]);
      }
      if (isLastPage) {
        sectionsCubit.state.data.addAll(result);
      } else {
        currentPage = currentPage + 1;
        sectionsCubit.state.data.addAll(result);
      }
      sectionsCubit.onUpdateData(sectionsCubit.state.data);
    }
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    homeCubit.onUpdateData(homeCubit.state.data);
  }

  void navigateToDeals(BuildContext context) {
    var deal = homeCubit.state.data?.flashSales;
    AutoRouter.of(context).push(SaleDetailsRoute(dealId: deal!.id));
  }
}
