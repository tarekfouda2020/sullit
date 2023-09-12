part of 'home_main_widgets_imports.dart';

class BuildHomeView extends StatelessWidget {
  final HomeDomainModel homeDomainModel;
  final HomeMainController controller;

  const BuildHomeView(
      {super.key, required this.homeDomainModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        padding: Dimens.paddingVertical10PX,
        children: [
          BuildHomeSwiper(slider: homeDomainModel.sliders),
          BuildBanners(banners: homeDomainModel.bannersOne),
          BuildDeals(
            flashSales: homeDomainModel.flashSales,
            controller: controller,
          ),
          BuildBanners(banners: homeDomainModel.bannersTwo),
          BuildPopularProducts(
            mostPopularProducts: homeDomainModel.mostPopular,
          ),
          BuildBestSellingProducts(
            bestSellingProducts: homeDomainModel.bestSellingProducts,
            controller: controller,
          ),
          BuildHomeNewProducts(
            newestProducts: homeDomainModel.newestProducts,
            controller: controller,
          ),
          BuildFeaturedProducts(
            featuredProducts: homeDomainModel.featuredProducts,
            controller: controller,
          ),
          BuildTopCategories(topCategories: homeDomainModel.topCategories),
          BuildTopBrands(brandList: homeDomainModel.topBrands)
        ],
      ),
    );
  }
}
