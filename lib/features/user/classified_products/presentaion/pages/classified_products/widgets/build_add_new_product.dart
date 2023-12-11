part of 'classified_products_w_imports.dart';

class BuildAddNewProduct extends StatelessWidget {
  final ClassifiesProductsController controller;

  const BuildAddNewProduct({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onAddProduct(context),
      child: Container(
        padding: Dimens.paddingAll20PX,
        margin: Dimens.paddingVertical10PX,
        decoration: const CustomDecoration(),
        child: Column(
          children: [
            Container(
              margin:Dimens.paddingVertical10PX,
              padding: Dimens.paddingAll10PX,
              decoration: BoxDecoration(
                color: context.colors.grey,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: context.colors.white,
              ),
            ),
            Text(
              tr('addNewProduct'),
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
