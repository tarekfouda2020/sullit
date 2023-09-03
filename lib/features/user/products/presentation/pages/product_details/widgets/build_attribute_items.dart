part of 'product_details_widgets_imports.dart';

class BuildAttributeItems extends StatelessWidget {
  final ProductDetailsController controller;
  final List<ProductOptions> optionModel;
  final int index;
  final int position;

  const BuildAttributeItems({
    super.key,
    required this.controller,
    required this.optionModel,
    required this.index,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    bool current = optionModel[index]
        .selectedAttribute!.contains(optionModel[index].options![position]);
    return InkWell(
      onTap: () =>
          controller.onSelectAttributes(context, optionModel, index, position),
      child: Container(
        width: 100.w,
        padding: Dimens.paddingAll8PX,
        decoration: BoxDecoration(
          border: Border.all(
            color: current ? context.colors.primary : context.colors.greyWhite,
          ),
          borderRadius: Dimens.borderRadius5PX,
        ),
        alignment: Alignment.center,
        child: Text(
          optionModel[index].options![position],
          style: AppTextStyle.s12_w400(
            color: context.colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
