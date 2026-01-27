part of 'cart_widgets_imports.dart';

class CartItemsListWidget extends StatelessWidget {
  final CartController controller;
  const CartItemsListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.cartBg,
      appBar: DefaultAppBar(title: tr("cart"), bgColor: context.colors.white),
      body: BlocBuilder<GenericBloc<CartDomainModel>, GenericState<CartDomainModel>>(
        bloc: controller.cartItemsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                const BuildCartStepper(current: 1),
                Gaps.vGap11,
                if ((state.data.items ?? []).isNotEmpty)
                  CleaAllWidget(
                    controller: controller,
                  ),
                Gaps.vGap12,
                BuildCartItems(
                  controller: controller,
                  cartItems: state.data.items!,
                ),
                BuildCartButtons(
                  cartModel: state.data,
                  controller: controller,
                ),
              ],
            );
          } else {
            return const BuildCartLoading();
          }
        },
      ),
    );
  }
}
