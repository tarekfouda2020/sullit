part of 'cart_widgets_imports.dart';

class CartItemsListWidget extends StatelessWidget {
  final CartController controller;

  const CartItemsListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    bool isAuth = context.watch<DeviceCubit>().state.model.auth;
    return Scaffold(
      backgroundColor: context.colors.cartBg,
      appBar: DefaultAppBar(
        title: tr("cart"),
        bgColor: context.colors.white,
        actions: [
          Visibility(
            visible: isAuth,
            child: BlocBuilder<GenericBloc<CartDomainModel>, GenericState<CartDomainModel>>(
              bloc: controller.cartItemsBloc,
              builder: (context, state) {
                if (state is GenericUpdateState && (state.data.items ?? []).isNotEmpty) {
                  return ValueListenableBuilder<bool>(
                    valueListenable: controller.isSharing,
                    builder: (context, isSharing, _) {
                      if (isSharing) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Center(
                            child: SizedBox(
                              width: 22,
                              height: 22,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: context.colors.primary,
                              ),
                            ),
                          ),
                        );
                      }
                      return IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        icon: const Icon(Icons.share),
                        color: context.colors.black,
                        onPressed: () => controller.shareCart(context),
                      );
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
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
