part of 'widgets_imports.dart';

class SupportedInsuranceWidget extends StatelessWidget {
  final List<InsuranceCompany> insurance;
  final PharmacyDetailsController controller;

  const SupportedInsuranceWidget({
    super.key,
    required this.insurance,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: 100.w,
              padding: Dimens.paddingAll8PX,
              decoration: BoxDecoration(
                border: Border.all(
                    color: context.colors.disableGray.withOpacity(0.5)),
                borderRadius: Dimens.borderRadius8PX,
              ),
              child: CachedImage(
                url: insurance[index].logo,
                fit: BoxFit.cover,
                // borderRadius:   Dimens.borderRadius8PX,
              ),
            ),
            separatorBuilder: (context, index) => Gaps.hGap10,
            itemCount: insurance.length,
          ),
        ),
        Gaps.vGap16,
      ],
    );
  }
}
