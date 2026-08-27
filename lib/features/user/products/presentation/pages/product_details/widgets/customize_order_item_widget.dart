part of 'product_details_widgets_imports.dart';

class CustomizeOrderItemWidget extends StatelessWidget {
  final ProductOptionModel optionModel;
  final ProductDetailsController controller;

  const CustomizeOrderItemWidget({
    super.key,
    required this.optionModel,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.standardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          GestureDetector(
            onTap: () => controller.onToggleOptionGroup(optionModel),
            child: Text(
              optionModel.name,
              style: AppTextStyle.s18_w600(
                color: context.colors.black,
              ),
            ),
          ),
          Gaps.vGap8,
          ...optionModel.values.map(
            (value) => CustomizeOptionsItem(
              valueModel: value,
              isRadio: optionModel.isRadio,
              isSelected: value.isSelected,
              onTap: () => controller.onOptionValueSelected(value),
            ),
          ),
        ],
      ),
    );
  }
}
