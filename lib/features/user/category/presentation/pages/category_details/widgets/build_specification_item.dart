part of 'category_details_widgets_imports.dart';

class BuildSpecificationItem extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;
  final AttributeValue attributeValueModel;
  final int position;
  final int attributeIndex;

  const BuildSpecificationItem(
      {super.key,
      required this.attributeValueModel,
      required this.categoryDetailsController,
      required this.position,
      required this.attributeIndex});

  @override
  Widget build(BuildContext context) {
    return SubFilterItemWidget(
      key: ValueKey('spec_${attributeValueModel.id}'),
      text: attributeValueModel.value, 
      isSelected: attributeValueModel.selected,
      onSelect: (val) => categoryDetailsController.onSelectAttributes(attributeIndex, position),
    );

    // return Container(
    //   margin: Dimens.paddingHorizontal10PX,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Text(
    //         attributeValueModel.value,
    //         style: AppTextStyle.s14_w400(color: textColor),
    //       ),
    //       Checkbox(
    //         value: attributeValueModel.selected,
    //         visualDensity: const VisualDensity(vertical: -2),
    //         onChanged: (val) => categoryDetailsController.onSelectAttributes(
    //             attributeIndex, position),
    //         checkColor: context.colors.white,
    //       )
    //     ],
    //   ),
    // );
  }
}
