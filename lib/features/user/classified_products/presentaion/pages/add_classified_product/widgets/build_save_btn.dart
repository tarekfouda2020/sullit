part of 'add_classified_product_w_imports.dart';

class BuildSaveProductBtn extends StatelessWidget {
  final AddClassifiedProductsController controller;

  const BuildSaveProductBtn({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr('saveProduct'),
      onTap: () => controller.addClassifiedProducts(context),
      margin: Dimens.paddingAll20PX,
    );
  }
}
