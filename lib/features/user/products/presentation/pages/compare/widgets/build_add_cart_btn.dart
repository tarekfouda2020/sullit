part of 'compare_widgets_imports.dart';
class BuildAddCartBtn extends StatelessWidget {
  final Product product;
  const BuildAddCartBtn({Key? key, required this.product, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => getIt<AddToCartHelper>().addToCartDialog(context, product),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 1,
        ).r,
        margin: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 3,
        ).r,
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: BorderRadius.circular(2).r,
        ),
        child: Text(
          "Add to card",
          style: AppTextStyle.s9_w400(
            color: context.colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
