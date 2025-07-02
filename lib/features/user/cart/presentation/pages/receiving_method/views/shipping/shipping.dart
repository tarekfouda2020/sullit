// ignore_for_file: library_private_types_in_public_api
part of 'shipping_imports.dart';

class Shipping extends StatefulWidget {
  final ShippingController shippingController;
  const Shipping({Key? key, required this.shippingController}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  late ShippingController controller;

  @override
  void initState() {
    controller = widget.shippingController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildNewShipping(controller: controller),
        Gaps.vGap10,
        SizedBox(
          height: MediaQuery.of(context).size.height*0.52,
          child: GenericListView(
            type: ListViewType.api,
            cubit: controller.addressesBloc,
            onRefresh: controller.getAddress,
            itemBuilder: (_, index, item) => BuildShippingAddressItem(
              address: item,
              controller: controller,
            ),
            loadingWidget: const BuildAddressLoading(),
            emptyWidget: const BuildAddressesEmptyView(),
          ),
        ),
      ],
    );
  }
}
