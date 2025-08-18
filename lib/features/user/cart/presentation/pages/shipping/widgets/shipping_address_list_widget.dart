part of 'shipping_widgets_imports.dart';

class ShippingAddressListWidget extends StatelessWidget {
  final ShippingController controller;

  const ShippingAddressListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: RefreshIndicator(
          onRefresh: () => controller.getPaginateAddress(1),
          child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.refreshCubit,
            builder: (context, state) {
              return PagedListView<int, Address>(
                pagingController: controller.pagingController,
                padding: Dimens.paddingHorizontal20PX,
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
              );
            },
          ),
        ));
  }
}
