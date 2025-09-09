part of 'cart_widgets_imports.dart';

class BuildCartItems extends StatelessWidget {
  final List<CartItem> cartItems;
  final CartController controller;

  const BuildCartItems(
      {super.key, required this.cartItems, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cartItems.isNotEmpty,
      replacement: const Flexible(
        child: BuildEmptyDataImage(),
      ),
      child: Flexible(
        child: ListView.builder(
          padding: Dimens.paddingHorizontal15PX,
          itemCount: cartItems.length,
          itemBuilder: (_, index) => BuildCartItem(
            cartItem: cartItems[index],
            controller: controller,
          ),
        ),
      ),
    );
  }
}
