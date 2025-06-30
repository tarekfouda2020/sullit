// ignore_for_file: library_private_types_in_public_api

part of 'cart_imports.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  late CartController controller;

  @override
  void initState() {
    controller = CartController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      // appBar: const BuildCustomAppBar(),
      appBar: DefaultAppBar(title: tr("cart"),bgColor: context.colors.white),
      body: BlocBuilder<GenericBloc<CartDomainModel>,
          GenericState<CartDomainModel>>(
        bloc: controller.cartItemsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                 BuildCartStepper(current: 1,title: tr("cart")),
                Gaps.vGap11,
                const CleaAllWidget(),
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
