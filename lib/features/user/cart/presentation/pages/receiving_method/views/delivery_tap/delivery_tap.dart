// ignore_for_file: library_private_types_in_public_api
part of 'delivery_tap_imports.dart';

class NewShippingPage extends StatefulWidget {
  final DeliveryTabController shippingController;

  const NewShippingPage({Key? key, required this.shippingController}) : super(key: key);

  @override
  _NewShippingPageState createState() => _NewShippingPageState();
}

class _NewShippingPageState extends State<NewShippingPage> {
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
              child: CustomRefreshIndicatorWidget(
                onRefresh: () async => await controller.getPaginateAddress(context, 1),
                child: PagedListView<int, AddressDomainModel>(
                  pagingController: controller.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<AddressDomainModel>(
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
