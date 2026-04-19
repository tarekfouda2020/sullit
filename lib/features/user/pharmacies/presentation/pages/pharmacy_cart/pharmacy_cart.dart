part of 'pharmacy_cart_imports.dart';

class PharmacyCart extends StatefulWidget {
  const PharmacyCart({super.key});

  @override
  State<PharmacyCart> createState() => _PharmacyCartState();
}

class _PharmacyCartState extends State<PharmacyCart> {
  final PharmacyCartController controller = PharmacyCartController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          title: tr('cart'),
       bgColor: context.colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(color: context.colors.customBackground),
        child: Column(
          spacing: 16,
          children: [
            const PharmacyCartInfoWidget(),
            CleaAllWidget(
              onPressClear: () {},
            ),
            Expanded(
              child: BlocBuilder<GenericBloc<List<CartItem>>, GenericState<List<CartItem>>>(
                bloc: controller.cartItemsBloc,
                builder: (context, state) {
                  return PharmacyCartItemsWidget(
                    cartItems: state.data,
                    controller: controller,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PharmacyBottomNavWidget(controller: controller),
    );
  }
}
