part of 'home_main_widgets_imports.dart';

class BuildHomeView extends StatelessWidget {
  final HomeDomainModel homeDomainModel;
  final HomeMainController controller;

  const BuildHomeView({
    super.key,
    required this.homeDomainModel,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        padding: Dimens.paddingVertical10PX,
        children: [
          BuildHomeSwiper(slider: homeDomainModel.sliders),
          BuildTopCategories(categories: homeDomainModel.categories),
          // BuildPopularProducts(
          //   mostPopularProducts: homeDomainModel.mostPopular,
          // ),
          BuildBestSellingProducts(
            bestSellingProducts: homeDomainModel.bestSellingProducts,
            controller: controller,
          ),
          Gaps.vGap10,
          BuildBanners(banners: homeDomainModel.bannersTwo),
          BuildHomeNewProducts(
            newestProducts: homeDomainModel.newestProducts,
            controller: controller,
          ),
          Gaps.vGap10,
          BuildBanners(banners: homeDomainModel.bannersOne),
          BuildFeaturedProducts(
            featuredProducts: homeDomainModel.featuredProducts,
            controller: controller,
          ),
          // BuildTopBrands(brandList: homeDomainModel.topBrands),
          if(homeDomainModel.flashSales != null)
          BuildDeals(
            flashSales: homeDomainModel.flashSales!,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
