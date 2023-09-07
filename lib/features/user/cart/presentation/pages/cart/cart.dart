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
      backgroundColor: context.colors.customBackground,
      appBar: const BuildCustomAppBar(),
      body: BlocBuilder<GenericBloc<CartDomainModel>,
          GenericState<CartDomainModel>>(
        bloc: controller.cartItemsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                const BuildCartStepper(current: 1),
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
