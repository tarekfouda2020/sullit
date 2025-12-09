part of 'cart_widgets_imports.dart';

class CartItemsListWidget extends StatelessWidget {
  final CartController controller;
  final CartDomainModel model;
  const CartItemsListWidget({super.key, required this.controller,required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap11,
        if((model.items ?? []).isNotEmpty)
          CleaAllWidget(controller: controller,),
        Gaps.vGap12,
        BuildCartItems(
          controller: controller,
          cartItems: model.items!,
        ),
        BuildCartButtons(
          cartModel: model,
          controller: controller,
        ),
      ],
    );
  }
}
