part of 'widgets_imports.dart';

class PharmacyDetailsAppBar extends StatelessWidget {
  final PharmacyDetailsController controller;

  const PharmacyDetailsAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.colors.white,
      pinned: true,
      elevation: 0,
      automaticallyImplyLeading: true,
      leading: const BackButton(color: Colors.black),
      title: Text(
        controller.pharmacyName,
        style: AppTextStyle.s20_w700(color: context.colors.black),
      ),
      expandedHeight: 480.h,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.paddingOf(context).top + kToolbarHeight,
              left: 16,
              right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: CustomDecoration(
                  radius: Dimens.borderRadius12PX,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedImage(
                      url: controller.pharmacyLogo,
                      height: 150.h,
                      width: double.infinity,
                      borderRadius: Dimens.topRadius12Px,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.bottomRadius12Px,
                      ),
                      child: PharmacyInfoWidget(
                        pharmacy: Pharmacy(
                          id: 1,
                          name: controller.pharmacyName,
                          logo: controller.pharmacyLogo,
                          rating: controller.pharmacyRating,
                          supportedInsurance: controller.pharmacyInsurance,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.vGap20,
              SupportedInsuranceWidget(
                insurance: controller.pharmacyInsurance,
                controller: controller,
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: Container(
          color: context.colors.customBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
              PharmacyPageProductsSectionWidget(
                controller: controller,
              ),
              Gaps.vGap12,
              PharmacyPageCategoriesWidget(
                category: controller.pharmacyCategories,
                controller: controller,
              ),
              Gaps.vGap12,
              PharmacyProductsSearchFieldWidget(
                controller: controller,
              ),
              Gaps.vGap10,
            ],
          ),
        ),
      ),
    );
  }
}
