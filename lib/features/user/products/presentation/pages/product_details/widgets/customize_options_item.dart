part of 'product_details_widgets_imports.dart';

class CustomizeOptionsItem extends StatelessWidget {
  final ProductOptionValue valueModel;
  final String type;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomizeOptionsItem({
    super.key,
    required this.valueModel,
    required this.type,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isRadio = type == 'radio';
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? context.colors.primary : context.colors.white,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isRadio
                  ? isSelected
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off
                  : isSelected
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
              color: isSelected ? context.colors.primary : context.colors.grey,
            ),
            Gaps.hGap12,
            Expanded(
              child: Text(
                valueModel.name,
                style: AppTextStyle.s16_w400(
                  color: context.colors.black,
                ),
              ),
            ),
            Text(
              '+ ${valueModel.price}',
              style: AppTextStyle.s16_w400(
                color: context.colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
