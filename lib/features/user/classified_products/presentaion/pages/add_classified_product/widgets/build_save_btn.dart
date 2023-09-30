part of 'add_classified_product_w_imports.dart';
class BuildSaveProductBtn extends StatelessWidget {
  final AddClassifiedProductsController controller ;
  const BuildSaveProductBtn({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.addClassifiedProducts(context),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: context.colors.primary),
        child: Text(
          textAlign: TextAlign.center,
          tr('saveProduct'),
          style: AppTextStyle.s16_w700(color: context.colors.white),
        ),
      ),
    );
  }
}
