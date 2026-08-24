part of 'widgets_imports.dart';

class AdditionalNotesWidget extends StatelessWidget {
  final String additionalInfo;
  final String? restaurantReply;

  const AdditionalNotesWidget({
    super.key,
    required this.additionalInfo,
    this.restaurantReply,
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
              if (restaurantReply?.isNotEmpty == true) ...[
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
                        "Restaurant Reply :",
                        style: AppTextStyle.s14_w400(color: context.colors.textColor),
                      ),
                      Gaps.vGap8,
                      Text(
                        restaurantReply!,
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
