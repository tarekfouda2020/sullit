part of 'addresses_imports.dart';

class Addresses extends StatefulWidget {
  const Addresses({Key? key}) : super(key: key);

  @override
  State<Addresses> createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  late AddressesController controller;

  @override
  void initState() {
    controller = AddressesController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Addresses"),
      body:
          BlocBuilder<GenericBloc<List<Address>>, GenericState<List<Address>>>(
        bloc: controller.addressesBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildAddNewAddress(
                  addAddressFor: AddAddressFor.addresses,
                  onRefresh: () => controller.getAddress(),
                ),
                Visibility(
                    visible: state.data.isNotEmpty,
                    replacement: const BuildAddressesEmptyView(),
                    child: BuildAddressesView(
                      controller: controller,
                    ))
              ],
            );
          } else {
            return const BuildAddressLoading();
          }
        },
      ),
    );
  }
}
