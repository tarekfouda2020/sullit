part of 'widgets_imports.dart';

class PharmacyProductInstructionsWidget extends StatelessWidget {
  final String instructions;

  const PharmacyProductInstructionsWidget({
    super.key,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            "Instructions:",
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          ),
          Gaps.vGap8,
          Text(
            instructions,
            style: AppTextStyle.s14_w600(color: context.colors.black)
                .copyWith(height: 1.4),
          ),
        ],
      ),
    );
  }
}
