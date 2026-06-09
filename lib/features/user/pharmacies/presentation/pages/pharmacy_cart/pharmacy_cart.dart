part of 'pharmacy_cart_imports.dart';

class PharmacyCart extends StatefulWidget {
  final Shop? pharmacy;
  const PharmacyCart({super.key, this.pharmacy});

  @override
  State<PharmacyCart> createState() => _PharmacyCartState();
}

class _PharmacyCartState extends State<PharmacyCart> {
  late final PharmacyCartController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmacyCartController(pharmacy: widget.pharmacy);
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) => controller.onBack(context),
      child: Scaffold(
        appBar: DefaultAppBar(
          title: tr('cart'),
          bgColor: context.colors.white,
          onBack: () => controller.onBack(context),
        ),
        body: Container(
          decoration: BoxDecoration(color: context.colors.customBackground),
          child: Column(
            spacing: 16,
            children: [
              PharmacyCartInfoWidget(controller: controller),
              CleaAllWidget(
                onPressClear: () => controller.showClearDialog(context),
              ),
              BlocBuilder<GenericBloc<CartDomainModel>,
                  GenericState<CartDomainModel>>(
                bloc: controller.cartItemsBloc,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return PharmacyCartItemsWidget(
                      cartItems: state.data.items ?? [],
                      controller: controller,
                    );
                  } else {
                    return const BuildPharmacyCartLoading();
                  }
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: PharmacyBottomNavWidget(controller: controller),
      ),
    );
  }
}
