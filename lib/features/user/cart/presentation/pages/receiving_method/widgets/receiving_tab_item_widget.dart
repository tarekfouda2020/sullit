part of 'receiving_method_widgets_imports.dart';


class ReceivingTabItemWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final void Function() onTap;
  const ReceivingTabItemWidget({super.key, required this.isSelected, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(color: isSelected ? context.colors.primary : context.colors.borderColor),
          color: isSelected ? context.colors.lightPrimary : context.colors.white,
        ),
        child: Text(title,
        style: AppTextStyle.s14_w700(color: isSelected ? context.colors.primary : context.colors.textColor),
        ),
      ),
    );
  }
}
