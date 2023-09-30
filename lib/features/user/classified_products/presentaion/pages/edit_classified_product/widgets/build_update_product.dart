part of 'edit_classified_product_w_imports.dart';

class BuildUpdateProduct extends StatelessWidget {
  final EditClassifiedProductController controller ;
  final int productId ;
  const BuildUpdateProduct({Key? key, required this.controller, required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.setUpdateProduct(context, productId),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: context.colors.primary,
        ),
        child: Text(
          textAlign: TextAlign.center,
          tr('saveChanges'),
          style: AppTextStyle.s16_w700(color: context.colors.white),
        ),
      ),
    );
  }
}
