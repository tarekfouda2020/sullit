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
    bool current = optionModel[index].selectedAttribute!.contains(optionModel[index].options![position]);
    return InkWell(
      onTap: () => controller.onSelectAttributes(context, optionModel, index, position),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 22.5),
        decoration: BoxDecoration(
          color: current ? context.colors.lightPrimary : context.colors.white,
          border: Border.all(
            color: current ? context.colors.primary : context.colors.gray3,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          optionModel[index].options![position],
          style: current
              ? AppTextStyle.s14_w700(color: context.colors.primary)
              : AppTextStyle.s14_w400(color: context.colors.gray5),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
