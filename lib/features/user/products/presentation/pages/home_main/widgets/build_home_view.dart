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
        controller: controller.scrollController,
        padding: Dimens.paddingVertical10PX,
        children: [
          BuildHomeSwiper(slider: homeDomainModel.sliders),
          Gaps.vGap25,
          const AdvantagesWidget(),
          Gaps.vGap16,
           VipOffersWidget(
               onTap: () => controller.homeController.animateTabsPages(3,context),
             text: "See Offers",
           ),
          Gaps.vGap12,
          BuildTopCategories(categories: homeDomainModel.categories),
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
          Gaps.vGap10,
          BuildBanners(banners: homeDomainModel.bannersTwo),
          // BuildHomeNewProducts(
          //   newestProducts: homeDomainModel.newestProducts,
          //   controller: controller,
          // ),
          BlocBuilder<GenericBloc<List<ProductSections>>,
              GenericState<List<ProductSections>>>(
            bloc: controller.sectionsCubit,
            builder: (context, state) {
              return Column(
                children: List.generate(
                  state.data.length,
                      (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildHeaderTitle(title: state.data[index].name),
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Gaps.hGap10,
                            ...List.generate(
                              state.data[index].products.length,
                                  (position) {
                                return Padding(
                                  padding: Dimens.paddingHorizontal5PX,
                                  child: BuildProductItem(
                                    productModel:
                                    state.data[index].products[position],
                                    onFavRefresh: () => controller.onChangeFav(
                                      state.data[index].products[position],
                                    ),

                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Gaps.vGap10,
          BuildBanners(banners: homeDomainModel.bannersOne),

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
          Gaps.vGap35,
        ],
      ),
    );
  }
}
