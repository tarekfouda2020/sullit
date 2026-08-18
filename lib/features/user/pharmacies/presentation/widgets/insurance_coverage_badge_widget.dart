part of 'widgets_imports.dart';

class InsuranceCoverageBadgeWidget extends StatelessWidget {
  final String percentage;

  const InsuranceCoverageBadgeWidget({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp14,
        vertical: Dimens.dp8,
      ),
      decoration: BoxDecoration(
        color: context.colors.lightPrimary,
        borderRadius: Dimens.borderRadius20PX,
      ),
      child: Text(
        "$percentage% Insurance coverage",
        style: AppTextStyle.s14_w600(color: context.colors.primary),
      ),
    );
  }
}
