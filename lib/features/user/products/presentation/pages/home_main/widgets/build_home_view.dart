part of 'home_main_widgets_imports.dart';

class BuildHomeView extends StatefulWidget {
  final HomeDomainModel homeDomainModel;
  final HomeMainController controller;

  const BuildHomeView({
    super.key,
    required this.homeDomainModel,
    required this.controller,
  });

  @override
  State<BuildHomeView> createState() => _BuildHomeViewState();
}

class _BuildHomeViewState extends State<BuildHomeView> {
  HomeDomainModel get homeDomainModel => widget.homeDomainModel;

  HomeMainController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView(
                controller: controller.scrollController,
                padding: Dimens.paddingVertical10PXHorizontal20PX,
                children: [
                  SearchProductField(
                    controller: controller,
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
                    tr("shopBy"),
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
            if (showBanner)
              BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: controller.bannerOnTopCubit,
                builder: (context, state) {
                  if (state.data) return const SizedBox.shrink();
                  return _buildVipBanner(context, false);
                },
              ),
          ],
        ),
        if (showBanner)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: controller.bannerOnTopCubit,
              builder: (context, state) {
                return IgnorePointer(
                  ignoring: !state.data,
                  child: AnimatedSlide(
                    offset: state.data
                        ? Offset.zero
                        : const Offset(0, 1.2),
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOutCubic,
                    child: AnimatedOpacity(
                      opacity: state.data ? 1 : 0,
                      duration: const Duration(milliseconds: 250),
                      child: _buildVipBanner(context, true),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }

  Widget _buildVipBanner(BuildContext context, bool onTop) {
    return GestureDetector(
      onTap: () => controller.onPressSeeOffers(context),
      child: Container(
        width: double.infinity,
        color: context.colors.customBackground,
        padding: EdgeInsetsDirectional.fromSTEB(
          20,
          onTop ? 10 : 5,
          20,
          onTop ? 10 : 37,
        ),
        child: Image.asset(Res.vipBanner),
      ),
    );
  }

  bool get showBanner => !context.isShareHolder;
}
