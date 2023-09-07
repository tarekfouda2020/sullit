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
      appBar: const BuildCustomAppBar(),
      body: BlocBuilder<GenericBloc<CartDomainModel>,
          GenericState<CartDomainModel>>(
        bloc: controller.cartItemsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                const BuildCartStepper(current: 1),
                Visibility(
                  visible: state.data.items!.isNotEmpty,
                  replacement: Flexible(
                    child: Center(
                      child: Text(
                        'No founded Items in cart. ! ',
                        style:
                            AppTextStyle.s14_w400(color: context.colors.grey),
                      ),
                    ),
                  ),
                  child: Flexible(
                    child: ListView.builder(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Dimens.dp20),
                      itemCount: state.data.items!.length,
                      itemBuilder: (_, index) => BuildCartItem(
                        cartItem: state.data.items![index],
                        controller: controller,
                        index: index,
                      ),
                    ),
                  ),
                ),
                BuildCartButtons(
                  price: state.data.calculableTotal.toString(),
                  currency: state.data.currencySymbol!,
                  cartItems: state.data.items!,
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
