part of 'category_details_widgets_imports.dart';

class SubFilterItemWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function(bool? value) onSelect;

  const SubFilterItemWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingHorizontal10PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyle.s14_w400(color: isSelected ? context.colors.primary : context.colors.black),
          ),
          Checkbox(
            value: isSelected,
            visualDensity: const VisualDensity(vertical: -2),
            onChanged: onSelect,
            checkColor: context.colors.white,
          )
        ],
      ),
    );
  }
}
