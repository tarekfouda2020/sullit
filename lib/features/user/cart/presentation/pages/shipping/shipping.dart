// ignore_for_file: library_private_types_in_public_api
part of 'shipping_imports.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  late ShippingController controller;

  @override
  void initState() {
    controller = ShippingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: BuildShippingButtons(controller: controller),
      body: Column(
        children: [
          const BuildCartStepper(current: 2),
          BuildNewShipping(controller: controller),
          Flexible(
            child: GenericListView(
              type: ListViewType.api,
              cubit: controller.addressesBloc,
              onRefresh: controller.getAddress,
              padding: Dimens.paddingAll15PX,
              itemBuilder: (_, index, item) => BuildShippingAddressItem(
                address: item,
                controller: controller,
              ),
              loadingWidget: const BuildAddressLoading(),
              emptyWidget: const BuildAddressesEmptyView(),
            ),
          )
        ],
      ),
    );
  }
}
