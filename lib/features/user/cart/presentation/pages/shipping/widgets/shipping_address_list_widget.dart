part of 'shipping_widgets_imports.dart';

class ShippingAddressListWidget extends StatelessWidget {
  final ShippingController controller;

  const ShippingAddressListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: CustomRefreshIndicatorWidget(
      onRefresh: () => controller.getPaginateAddress(1),
      child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: controller.refreshCubit,
        builder: (context, state) {
          return PagedListView<int, AddressDomainModel>(
            pagingController: controller.pagingController,
            padding: Dimens.paddingHorizontal20PX,
            builderDelegate: PagedChildBuilderDelegate<AddressDomainModel>(
              itemBuilder: (_, item, index) {
                return BuildShippingAddressItem(
                  address: item,
                  onTap: () => controller.onSelectAddress(context, item),
                );
              },
              noItemsFoundIndicatorBuilder: (cxt) =>
                  const BuildAddressesEmptyView(),
              firstPageProgressIndicatorBuilder: (_) => Column(
                children: List.generate(2, (index) {
                  return const AddressLoadingItemWidget();
                }),
              ),
              newPageProgressIndicatorBuilder: (context) => const Center(
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
