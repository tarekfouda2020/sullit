part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyApplyButtonWidget extends StatelessWidget {
  final void Function() onPressApply;
  const PharmacyApplyButtonWidget({super.key, required this.onPressApply});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressApply,
      child: Container(
        width: 106,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: Dimens.borderRadius30PX,
        ),
        child: Text(
          tr('apply'),
          style: AppTextStyle.s16_w600(color: context.colors.white),
        ),
      ),
    );
  }
}
