part of 'widgets_imports.dart';

class PharmacyDetailsAppBar extends StatelessWidget {
  final PharmacyDetailsController controller;

  const PharmacyDetailsAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Shop?>, GenericState<Shop?>>(
      bloc: controller.pharmacyBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          var shop = state.data;
          return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.refreshCategories,
            builder: (context, state) {
              return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: controller.showAppBarTitle,
                builder: (context, titleState) {
                  return SliverAppBar(
                    backgroundColor: context.colors.white,
                    pinned: true,
                    elevation: 0,
                    automaticallyImplyLeading: true,
                    centerTitle: true,
                    leading: BackButton(color: context.colors.black),
                    title: AnimatedOpacity(
                      opacity: titleState.data ? 1 : 0,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                      child: Text(
                        shop?.name ?? '',
                        maxLines: 1,
                        style:
                            AppTextStyle.s16_w700(color: context.colors.black),
                      ),
                    ),
                    // expandedHeight: MediaQuery.sizeOf(context).height * 0.68,
                    expandedHeight: getExpandedHeight,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.paddingOf(context).top +
                              kToolbarHeight,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedImage(
                                  url: shop?.logo ?? '',
                                  height: 110.h,
                                  fit: BoxFit.cover,
                                  bgColor: context.colors.white,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: context.colors.white,
                                  ),
                                  child: PharmacyInfoWidget(
                                    pharmacy: shop!,
                                  ),
                                ),
                              ],
                            ),
                          if(controller.isPharmacy)...[
                            Gaps.vGap20,
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: SupportedInsuranceWidget(
                                insurance: shop.insuranceCompanies ?? [],
                                controller: controller,
                              ),
                            ),
                          ]
                          ],
                        ),
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(sizeWhileScroll),
                      child: Container(
                        color: context.colors.customBackground,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                           if(controller.isPharmacy)...[
                             Gaps.vGap5,
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16),
                               child: PharmSloganBannerWidget(
                                 firstText: 'Get Your Medication',
                                 secondText: 'Upload Prescription',
                                 onTap: () => controller.routeToPrescription(context),
                               ),
                             ),
                           ],
                           if(controller.haveBranches)...[
                             Gaps.vGap10,
                             PickBranchWidget(controller: controller),
                           ],
                            Gaps.vGap10,
                            PharmacyCategoriesWidgets(controller: controller),
                            PharmacyProductsSearchFieldWidget(
                              controller: controller,
                            ),
                            Gaps.vGap10,
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        } else {
          return const PharamacyHeaderShimmerWidget();
        }
      },
    );
  }

  bool get haveBranches => controller.haveBranches;


  static const double _bannerHeight = 90;

  double get getExpandedHeight {
    if(controller.isRestaurant){
      return 500;
    }
    double height =
        controller.categoriesPagingController.itemList?.isNotEmpty == true
            ? 565
            : 495;
    height += _bannerHeight;
    if (haveBranches) {
      height += 56;
    }
    return height;
  }

  double get sizeWhileScroll {
    if(controller.isRestaurant){
      return kToolbarHeight + 50;
    }
    double height =
        controller.categoriesPagingController.itemList?.isNotEmpty == true
            ? 165
            : 90;
    height += _bannerHeight;
    if (haveBranches) {
      height += 56;
    }
    return height;
  }
}
