part of 'widgets_imports.dart';

class AdditionalNotesWidget extends StatelessWidget {
  final String additionalInfo;
  final String? pharmacyReply;

  const AdditionalNotesWidget({
    super.key,
    required this.additionalInfo,
    this.pharmacyReply,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Additional Notes",
          style: AppTextStyle.s16_w700(color: context.colors.black),
        ),
        Gaps.vGap15,
        Container(
          width: double.infinity,
          padding: Dimens.paddingAll15PX,
          decoration: CustomDecoration(
            thisColor: context.colors.white,
            myBoxShadow: const [],
            radius: Dimens.borderRadius15PX,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                additionalInfo,
                style: AppTextStyle.s16_w500(color: context.colors.black)
                    .copyWith(height: 1.4),
              ),
              if (pharmacyReply?.isNotEmpty == true) ...[
                Gaps.vGap15,
                Container(
                  width: double.infinity,
                  padding: Dimens.paddingAll15PX,
                  decoration: CustomDecoration(
                    thisColor: context.colors.customBackground,
                    myBoxShadow: const [],
                    radius: Dimens.borderRadius10PX,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pharmacy Reply :",
                        style: AppTextStyle.s14_w400(color: context.colors.textColor),
                      ),
                      Gaps.vGap8,
                      Text(
                        pharmacyReply!,
                        style: AppTextStyle.s14_w600(color: context.colors.black)
                            .copyWith(height: 1.4),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
