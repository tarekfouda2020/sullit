// ignore_for_file: library_private_types_in_public_api
part of 'shipping_imports.dart';

class Shipping extends StatefulWidget {
  final DeliveryTabController shippingController;

  const Shipping({Key? key, required this.shippingController}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  late DeliveryTabController controller;

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
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: controller.refreshCubit,
          builder: (context, state) {
            return SizedBox(
              height: 350.h,
              child: RefreshIndicator(
                onRefresh: () => controller.getPaginateAddress(context, 1),
                child: PagedListView<int, Address>(
                  pagingController: controller.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Address>(
                    itemBuilder: (_, item, index) {
                      return BuildShippingAddressItem(
                        address: item,
                        controller: controller,
                      );
                    },
                    noItemsFoundIndicatorBuilder: (cxt) => const BuildAddressesEmptyView(),
                    firstPageProgressIndicatorBuilder: (_) =>
                        Column(
                          children: List.generate(2, (index) {
                            return const AddressLoadingItemWidget();
                          }),
                        ),
                    newPageProgressIndicatorBuilder: (context) =>
                    const Center(
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator.adaptive(
                          strokeWidth: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
