part of 'category_details_widgets_imports.dart';

class BuildColorFilter extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;
  final SubCategory subCategoryModel;

  const BuildColorFilter(
      {super.key,
      required this.categoryDetailsController,
      required this.subCategoryModel});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: subCategoryModel.colors.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => categoryDetailsController.onOpenColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
                  child: Text(
                    tr('filterByColor'),
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                Visibility(
                  visible: subCategoryModel.isColorAttributeOpened,
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
            visible: subCategoryModel.isColorAttributeOpened,
            child: Wrap(
              spacing: 10.r,
              runSpacing: 10.r,
              children: List.generate(
                subCategoryModel.colors.length,
                (index) => BuildColorFilterItem(
                  colorModel: subCategoryModel.colors[index],
                  categoryDetailsController: categoryDetailsController,
                  index: index,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
