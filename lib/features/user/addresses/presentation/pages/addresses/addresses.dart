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
      body : RefreshIndicator(
        onRefresh: () => controller.getAddress(1),
        child: PagedListView<int, Address>(
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Address>(
            itemBuilder: (_, item, index) {
              return BuildNewAddressItem(
                address: item,
                controller: controller,
              );
            },
            noItemsFoundIndicatorBuilder: (cxt) =>const BuildAddressesEmptyView(),
            firstPageProgressIndicatorBuilder: (_) => const BuildAddressLoading(),
            newPageProgressIndicatorBuilder: (context) =>  const SizedBox(
              width: 15,height: 15,
              child: Center(
                child: CircularProgressIndicator.adaptive(
              strokeWidth: 2,
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BuildAddAddressBtn(controller: controller),
    );
  }
}
