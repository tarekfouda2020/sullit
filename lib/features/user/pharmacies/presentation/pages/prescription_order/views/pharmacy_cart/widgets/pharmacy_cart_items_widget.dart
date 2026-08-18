part of 'widgets_imports.dart';

class PharmacyCartItemsWidget extends StatelessWidget {
  final List<GeneralCartItem> cartItems;
  final PharmacyCartController controller;

  const PharmacyCartItemsWidget(
      {super.key, required this.cartItems, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cartItems.isNotEmpty,
      replacement: const BuildEmptyDataImage(),
      child: Expanded(
        child: ListView.builder(
          padding: Dimens.paddingVertical10PXHorizontal20PX,
          itemCount: cartItems.length,
          itemBuilder: (_, index) => BuildPharmacyCartItem(
            cartItem: cartItems[index],
            controller: controller,
          ),
        ),
      ),
    );
  }
}
