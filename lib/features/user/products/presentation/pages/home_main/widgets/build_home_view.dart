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
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: controller.scrollController,
            padding: Dimens.paddingVertical10PXHorizontal20PX,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GenericTextField(
                  fieldTypes: FieldTypes.normal,
                  hintStyle: AppTextStyle.s14_w400(
                    color: context.colors.textColor,
                  ),
                  type: TextInputType.text,
                  controller: controller.homeController.searchController,
                  action: TextInputAction.search,
                  radius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  validate: (value) {},
                  autoFocus: false,
                  fillColor: context.colors.white,
                  enableBorderColor: context.colors.borderColor,
                  focusBorderColor: context.colors.borderColor,
                  hint: tr(
                    'Search products, sellers & offers...',
                    context: context,
                  ),
                  minHeight: 48,
                  minWidth: 20,
                  onSubmit: () => controller.routeToSearchPage(context),
                  prefixIcon: GestureDetector(
                    onTap: () => controller.routeToSearchPage(context),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 15,
                      ),
                      child: Transform.scale(
                        scale: 0.9,
                        child: SvgPicture.asset(
                          Res.searchIcon,
                        ),
                      ),
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 16,
                    ),
                    child: GestureDetector(
                      onTap: () => controller.scanProduct(context),
                      child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset(
                          Res.qrScanIcon,
                        ),
                      ),
                    ),
                  ),
                ),
                Gaps.vGap16,
                const AiAndPriceFinderCardWidget(),
                Gaps.vGap16,
                BuildHomeSwiper(
                  slider: homeDomainModel.sliders,
                  controller: controller,
                ),
                Gaps.vGap16,
                Text(
                  tr("Shop By"),
                  style: AppTextStyle.s16_w700(
                    color: context.colors.black,
                  ),
                ),
                Gaps.vGap8,
                ShopTypeShortCutsWidget(
                  controller: controller,
                ),
                Gaps.vGap20,
                TrackSellerOrderWidget(
                  currentOrders: homeDomainModel.currentOrders,
                  controller: controller,
                ),
                Gaps.vGap10,
                if (context.isAuth == true)
                  ContinueShoppingWidget(
                    controller: controller,
                    recentlyViewedProducts: homeDomainModel.recentlyViewedProducts,
                  ),
                Gaps.vGap16,
                Image.asset(
                  Res.specialOfferBanner,
                ),
                Gaps.vGap16,
                OnSaleOffersFormWidget(
                  controller: controller,
                ),
                Gaps.vGap16,
                Image.asset(
                  Res.offerLocationBanner,
                ),
                Gaps.vGap16,
                BuildTopSellers(
                  topSellers: homeDomainModel.topSellers,
                ),
                if (context.isAuth == true) ...[
                  Gaps.vGap24,
                  YourOrdersWidget(
                    controller: controller,
                    recentlyOrderedProducts: homeDomainModel.recentlyOrderedProducts,
                  ),
                ],
                PharmacyHomeSectionWidget(
                  controller: controller,
                ),
                if (homeDomainModel.pharmacyShops.isNotEmpty) ...[
                  Gaps.vGap16,
                  PharmSloganBannerWidget(
                    firstText: tr('haveAPrescriptionGetStarted'),
                    secondText: tr('uploadNow'),
                    onTap: () => controller.onPressAttachPrescription(context),
                  ),
                  Gaps.vGap16,
                ],
                VipOffersFormWidget(
                  controller: controller,
                ),
                Gaps.vGap16,
                if (homeDomainModel.bannersTwo.isNotEmpty) Gaps.vGap10,
                BuildBanners(
                  banners: homeDomainModel.bannersTwo,
                  controller: controller,
                ),
                if (homeDomainModel.bannersTwo.isNotEmpty) Gaps.vGap16,
                NewArrivalOffersFormWidget(
                  controller: controller,
                ),
                if (homeDomainModel.shop.isNotEmpty)
                  ProductSectionsFormWidget(
                    controller: controller,
                  ),
                Gaps.vGap16,
                BestRatedOffersFormWidget(
                  controller: controller,
                ),
                if (homeDomainModel.flashSales != null)
                  BuildDeals(
                    flashSales: homeDomainModel.flashSales!,
                    controller: controller,
                  ),
                Gaps.vGap20,
              ],
            ),
          ),
        ),
        Container(
          color: context.colors.customBackground,
          padding: const EdgeInsetsDirectional.fromSTEB(
            20,
            5,
            20,
            37,
          ),
          child: Image.asset(
            Res.vipBanner,
          ),
        ),
      ],
    );
  }
}
