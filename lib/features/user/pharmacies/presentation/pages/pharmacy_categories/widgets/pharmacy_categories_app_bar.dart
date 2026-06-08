part of 'widgets_imports.dart';

class PharmacyCategoriesAppBar extends StatelessWidget {
  final PharmacyCategoriesController controller;

  const PharmacyCategoriesAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Shop?>, GenericState<Shop?>>(
      bloc: controller.shopBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          var shop = state.data;
          var insuranceList = shop?.insuranceCompanies ?? [];
          return SliverAppBar(
            backgroundColor: context.colors.white,
            pinned: true,
            elevation: 0,
            automaticallyImplyLeading: true,
            leading: const BackButton(color: Colors.black),
            title: Text(
              shop?.name ?? '',
              style: AppTextStyle.s20_w700(color: context.colors.black),
            ),
            expandedHeight: 350.h,
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
                    Container(
                      decoration: CustomDecoration(
                        radius: Dimens.borderRadius12PX,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CachedImage(
                            url: shop?.logo ?? '',
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
                              pharmacy: shop!,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gaps.vGap20,
                    if (insuranceList.isNotEmpty)
                      _buildInsuranceList(context, insuranceList),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const PharamacyHeaderShimmerWidget();
        }
      },
    );
  }

  Widget _buildInsuranceList(
      BuildContext context, List<InsuranceCompany> insuranceList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tr("supported_health_insurance_by"),
              style: AppTextStyle.s16_w600(color: context.colors.black),
            ),
            GestureDetector(
              onTap: () => controller.onPressSupportedInsurance(context),
              child: Text(
                tr("seeAll"),
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
            ),
          ],
        ),
        Gaps.vGap12,
        SizedBox(
          height: 60.h,
          child: ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: 100.w,
              padding: Dimens.paddingAll8PX,
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.colors.disableGray.withValues(alpha: 0.5),
                ),
                borderRadius: Dimens.borderRadius8PX,
              ),
              child: CachedImage(
                url: insuranceList[index].logoUrl,
                fit: BoxFit.contain,
              ),
            ),
            separatorBuilder: (context, index) => Gaps.hGap10,
            itemCount: insuranceList.length,
          ),
        ),
      ],
    );
  }
}
