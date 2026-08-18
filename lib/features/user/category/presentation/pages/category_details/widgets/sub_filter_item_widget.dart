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
    return Row(
      children: [
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            value: isSelected,
            visualDensity: const VisualDensity(vertical: -2),
            onChanged: onSelect,
            checkColor: context.colors.white,
            side: BorderSide(
              color: context.colors.gray3,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: Dimens.borderRadius4PX,
            ),
            fillColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return context.colors.white;
              }
              if (states.contains(WidgetState.selected)) {
                return context.colors.primary;
              }
              return context.colors.white;
            }),
          ),
        ),
        GestureDetector(
          onTap: () => onSelect(isSelected),
          child: SizedBox(
            width: 215,
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s14_w400(
                      color: isSelected
                          ? context.colors.primary
                          : context.colors.black)
                  .copyWith(height: 1.3),
            ),
          ),
        ),
      ],
    );
  }
}
