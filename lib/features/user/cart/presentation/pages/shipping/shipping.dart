// ignore_for_file: library_private_types_in_public_api
part of 'shipping_imports.dart';

class Shipping extends StatefulWidget {
  const Shipping({
    Key? key,
  }) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  final ShippingController controller = ShippingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: BuildShippingButtons(
        controller: controller,
      ),
      body: Column(
        children: [
          const BuildCartStepper(current: 2),
          BlocBuilder<GenericBloc<List<Address>>, GenericState<List<Address>>>(
            bloc: controller.addressesBloc,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return Expanded(
                  child: ListView(
                    children: [
                       BuildAddNewAddress(
                        addAddressFor: AddAddressFor.cart,
                        onRefresh: ()=> controller.getAddress(),
                      ),
                      Visibility(
                        visible: state.data.isNotEmpty,
                        replacement: const BuildAddressesEmptyView(),
                        child: BuildShippingAddressView(
                          controller: controller,
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return const BuildAddressLoading();
              }
            },
          ),
        ],
      ),
    );
  }
}
