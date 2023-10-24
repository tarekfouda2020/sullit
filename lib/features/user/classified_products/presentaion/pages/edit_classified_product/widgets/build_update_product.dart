part of 'edit_classified_product_w_imports.dart';

class BuildUpdateProduct extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildUpdateProduct({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr('saveChanges'),
      onTap: () => controller.setUpdateProduct(context),
      margin: Dimens.paddingAll20PX,
    );
  }
}
