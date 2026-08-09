part of '../instore_cart_page_imports.dart';

class InstoreCartItemsWidget extends StatelessWidget {
  final List<InstoreCartItemModel> cartItems;
  final InstoreCartPageController controller;

  const InstoreCartItemsWidget({
    super.key,
    required this.cartItems,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (cartItems.isEmpty) {
      return const BuildEmptyDataImage();
    }

    return ListView.builder(
      padding: Dimens.paddingHorizontal15PX,
      itemCount: cartItems.length,
      itemBuilder: (_, index) => InstoreCartItemWidget(
        cartItem: cartItems[index],
        controller: controller,
      ),
    );
  }
}
