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
          return BlocBuilder<GenericBloc<bool>,GenericState<bool>>(
            bloc: controller.refreshCategories,
            builder: (context, state) {
            return SliverAppBar(
              backgroundColor: context.colors.white,
              pinned: true,
              elevation: 0,
              automaticallyImplyLeading: true,
              leading:  BackButton(color: context.colors.black),
              // expandedHeight: MediaQuery.sizeOf(context).height * 0.68,
              expandedHeight: getExpandedHeight,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.paddingOf(context).top + kToolbarHeight,
                    left: 16,
                    right: 16,
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
                            width: double.infinity,
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
                      Gaps.vGap20,
                      SupportedInsuranceWidget(
                        insurance: shop.insuranceCompanies ?? [],
                        controller: controller,
                      ),
                    ],
                  ),
                ),
              ),
              bottom: PreferredSize(
                preferredSize:  Size.fromHeight(sizeWhileScroll),
                child: Container(
                  color: context.colors.customBackground,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
          },);
        } else {
          return const PharamacyHeaderShimmerWidget();
        }
      },
    );
  }



  double get getExpandedHeight => controller.categoriesPagingController.itemList?.isNotEmpty == true
  ? 570
  : 500;

  double get sizeWhileScroll =>  controller.categoriesPagingController.itemList?.isNotEmpty == true
      ? 170
      : 93 ;


}
