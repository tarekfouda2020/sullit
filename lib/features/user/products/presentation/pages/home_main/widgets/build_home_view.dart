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
      child: SingleChildScrollView(
        controller: controller.scrollController,
        padding: Dimens.paddingVertical10PXHorizontal20PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildHomeSwiper(slider: homeDomainModel.sliders),
            Gaps.vGap25,
            const AdvantagesWidget(),
            Gaps.vGap20,
            // Text("Track Your Current Orders",
            // style: AppTextStyle.s16_w600(color: context.colors.black),
            // ),
            // Gaps.vGap12,
            // const TrackSellerOrderWidget(),
            BuildTopCategories(categories: homeDomainModel.categories, controller: controller),
            VipOffersFormWidget(controller: controller),
            Gaps.vGap16,
            VipOffersWidget(
              onTap: () => controller.onPressSeeOffers(context),
              buttonText: tr("seeOffers"),
              margin: EdgeInsets.zero,
            ),
            // BuildPopularProducts(
            //   mostPopularProducts: homeDomainModel.mostPopular,
            // ),
            // BuildBestSellingProducts(
            //   bestSellingProducts: homeDomainModel.bestSellingProducts,
            //   controller: controller,
            // ),
            // BuildNewArrivals(
            //   newArrivals: homeDomainModel.newArrivals,
            //   controller: controller,
            // ),
            // BuildBestRated(
            //   bestRated: homeDomainModel.bestRated,
            //   controller: controller,
            // ),
            if (homeDomainModel.bannersTwo.isNotEmpty) Gaps.vGap10,
            BuildBanners(banners: homeDomainModel.bannersTwo),
            Gaps.vGap16,
            NewArrivalOffersFormWidget(controller: controller),
            if(controller.homeCubit.state.data?.shop.isNotEmpty == true)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: BuildHeaderTitle(
                title: tr("sellers"),
                controller: controller,
                onTap: () => AutoRouter.of(context).push(const BestSellersPageRoute()),
              ),
            ),
             SellersSectionWidget(controller: controller,),
            // BuildHomeNewProducts(
            //   newestProducts: homeDomainModel.newestProducts,
            //   controller: controller,
            // ),
            ProductSectionsFormWidget(controller: controller),
            BrandsFromWidget(controller: controller),
            Gaps.vGap16,
            OnSaleOffersFormWidget(controller: controller),
            Gaps.vGap16,
            BuildBanners(banners: homeDomainModel.bannersOne),
            Gaps.vGap16,
            BestRatedOffersFormWidget(controller: controller),
            // BuildFeaturedProducts(
            //   featuredProducts: homeDomainModel.featuredProducts,
            //   controller: controller,
            // ),
            // BuildTopBrands(brandList: homeDomainModel.topBrands),
            if (homeDomainModel.flashSales != null)
              BuildDeals(
                flashSales: homeDomainModel.flashSales!,
                controller: controller,
              ),
            Gaps.vGap20,

          ],
        ),
      ),
    );
  }
}
