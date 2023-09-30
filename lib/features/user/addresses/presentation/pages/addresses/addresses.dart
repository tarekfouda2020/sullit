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
      appBar: DefaultAppBar(title: tr('addresses')),
      floatingActionButton: BuildAddAddressBtn(controller: controller),
      body: GenericListView(
        type: ListViewType.api,
        cubit: controller.addressesBloc,
        onRefresh: controller.getAddress,
        padding: Dimens.paddingAll15PX,
        itemBuilder: (_, index, item) => BuildNewAddressItem(
          address: item,
          controller: controller,
        ),
        emptyWidget: const BuildAddressesEmptyView(),
        loadingWidget: const BuildAddressLoading(),
      ),
    );
  }
}
