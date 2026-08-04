part of 'widgets_imports.dart';

class PharmacyDeliveryOptionWidget extends StatelessWidget {
  final bool isSelected;
  final String label;
  final VoidCallback onTap;

  const PharmacyDeliveryOptionWidget({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 30, 10),
        decoration: BoxDecoration(
          color: isSelected ? context.colors.lightPrimary : Colors.transparent,
          borderRadius: Dimens.borderRadius20PX,
          border: Border.all(color: context.colors.gray3),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomRadioWidget(selected: isSelected),
            Gaps.hGap8,
            Text(
              label,
              style: AppTextStyle.s14_w600(
                color: isSelected
                    ? context.colors.primary
                    : context.colors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
