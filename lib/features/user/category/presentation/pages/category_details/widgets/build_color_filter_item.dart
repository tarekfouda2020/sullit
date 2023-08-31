part of 'category_details_widgets_imports.dart';

class BuildColorFilterItem extends StatelessWidget {
  final ColorDomainModel colorModel;
  final CategoryDetailsController categoryDetailsController;
  final int index;

  const BuildColorFilterItem(
      {super.key,
      required this.colorModel,
      required this.categoryDetailsController,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => categoryDetailsController.onSelectColor(index),
      child: Container(
        width: 45.w,
        padding: Dimens.paddingAll8PX,
        decoration: BoxDecoration(
            border: Border.all(
              color: colorModel.selected
                  ? context.colors.primary
                  : context.colors.greyWhite,
            ),
            borderRadius: BorderRadius.circular(4)),
        alignment: Alignment.center,
        child: Container(
          width: 10.r,
          height: 10.r,
          padding: Dimens.paddingAll5PX,
          color: Color(int.parse(colorModel.code!.replaceFirst("#", "0xff"))),
        ),
      ),
    );
  }
}
