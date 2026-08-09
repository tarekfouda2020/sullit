part of '../instore_checkout_imports.dart';

class InstoreApplyButtonWidget extends StatelessWidget {
  final void Function() onPressApply;

  const InstoreApplyButtonWidget({
    super.key,
    required this.onPressApply,
  });

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
