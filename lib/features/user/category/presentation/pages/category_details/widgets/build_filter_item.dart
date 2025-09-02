part of 'category_details_widgets_imports.dart';

class BuildFilterItem extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;
  final Attributes attributesModel;
  final int index;

  const BuildFilterItem({super.key,
      required this.attributesModel,
      required this.index,
      required this.categoryDetailsController
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => categoryDetailsController.onOpenAttribute(index),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                child: Text(
                  attributesModel.name,
                  style: AppTextStyle.s14_w800(color: context.colors.black),
                ),
              ),
              Visibility(
                visible: attributesModel.opened,
                replacement: Icon(
                  Icons.keyboard_arrow_down,
                  color: context.colors.black,
                ),
                child: Icon(
                  Icons.keyboard_arrow_up,
                  color: context.colors.black,
                ),
              )
            ],
          ),
        ),
        Gaps.line(context.colors.gray, 10),
        Visibility(
          visible: attributesModel.opened,
          child: Column(
            children: List.generate(
              attributesModel.attributeValues.length,
              (position) => BuildSpecificationItem(
                position: position,
                attributeIndex:index,
                categoryDetailsController: categoryDetailsController,
                attributeValueModel: attributesModel.attributeValues[position],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
