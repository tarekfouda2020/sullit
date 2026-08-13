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
          children: <Widget>[
            BuildHomeSwiper(slider: homeDomainModel.sliders, controller: controller),
            Gaps.vGap25,
            const AdvantagesWidget(),
            Gaps.vGap20,
            ShopTypeShortCutsWidget(
              controller: controller,
            ),
            Gaps.vGap20,
            TrackSellerOrderWidget(
              currentOrders: homeDomainModel.currentOrders,
              controller: controller,
            ),
            Gaps.vGap10,
            BuildTopSellers(
              topSellers: homeDomainModel.topSellers,
            ),
            BuildTopCategories(categories: homeDomainModel.categories, controller: controller),
            PharmacyHomeSectionWidget(controller: controller),
            Gaps.vGap16,
            PharmSloganBannerWidget(
              firstText: 'Have a prescription?  Get Started',
              secondText: 'Upload Now  ',
              onTap: () => controller.onPressAttachPrescription(context),
            ),
            Gaps.vGap16,
            VipOffersFormWidget(controller: controller),
            Gaps.vGap16,
            VipOffersWidget(
              onTap: () => controller.onPressSeeOffers(context),
              buttonText: tr("seeOffers", context: context),
              margin: EdgeInsets.zero,
            ),
            Gaps.vGap16,
            BuildHeaderTitle(
              title: 'Restaurants',
              onTap: () => AutoRouter.of(context).push(
                const RestaurantsRoute(),
              ),
            ),
            Gaps.vGap8,
            SizedBox(
              height: 130,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (_, __) => Gaps.hGap12,
                itemBuilder: (context, index) {
                  return const RestaurantCardWidget(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvOcBZ81pEEUO5vVLZ9qnHxc8eqEmn_9cphmmoCIDbcw&s=10",
                    name: "Andoks Restaurant",
                  );
                },
              ),
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
            BuildBanners(banners: homeDomainModel.bannersTwo, controller: controller),
            Gaps.vGap16,
            NewArrivalOffersFormWidget(controller: controller),
            if (controller.homeCubit.state.data?.shop.isNotEmpty == true)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: BuildHeaderTitle(
                  title: tr("sellers"),
                  onTap: () => AutoRouter.of(context).push(const BestSellersPageRoute()),
                ),
              ),
            SellersSectionWidget(
              controller: controller,
            ),
            // BuildHomeNewProducts(
            //   newestProducts: homeDomainModel.newestProducts,
            //   controller: controller,
            // ),
            ProductSectionsFormWidget(controller: controller),
            BrandsFromWidget(controller: controller),
            Gaps.vGap16,
            OnSaleOffersFormWidget(controller: controller),
            Gaps.vGap16,
            BuildBanners(banners: homeDomainModel.bannersOne, controller: controller),
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
