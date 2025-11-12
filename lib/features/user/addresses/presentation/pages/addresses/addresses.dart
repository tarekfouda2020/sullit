part of 'addresses_imports.dart';

class Addresses extends StatefulWidget {
  final bool? isFromReturn;
  const Addresses({Key? key, this.isFromReturn}) : super(key: key);

  @override
  State<Addresses> createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  late AddressesController controller;

  @override
  void initState() {
    super.initState();
    controller = AddressesController(widget.isFromReturn ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('addresses')),
      body : CustomRefreshIndicatorWidget(
        onRefresh: () async => await controller.getAddress(1),
        child: PagedListView<int, AddressDomainModel>(
          pagingController: controller.pagingController,
          padding: Dimens.paddingHorizontal20PX,
          builderDelegate: PagedChildBuilderDelegate<AddressDomainModel>(
            itemBuilder: (_, item, index) {
              return BuildNewAddressItem(
                address: item,
                controller: controller,
              );
            },
            noItemsFoundIndicatorBuilder: (cxt) =>const BuildAddressesEmptyView(),
            firstPageProgressIndicatorBuilder: (_) => const BuildAddressLoading(),
            newPageProgressIndicatorBuilder: (context) =>   SizedBox(
              width: 15,height: 15,
              child: Center(
                child: CircularProgressIndicator(
                 strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation(context.colors.white),
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
