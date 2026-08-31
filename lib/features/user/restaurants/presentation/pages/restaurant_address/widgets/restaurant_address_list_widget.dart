part of 'widgets_imports.dart';

class RestaurantAddressListWidget extends StatelessWidget {
  final RestaurantAddressController controller;

  const RestaurantAddressListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.refreshCubit,
      builder: (context, state) {
        return CustomRefreshIndicatorWidget(
          onRefresh: () async => await controller.getPaginateAddress(1),
          child: PagedListView<int, AddressDomainModel>(
            pagingController: controller.pagingController,
            shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            builderDelegate: PagedChildBuilderDelegate<AddressDomainModel>(
              itemBuilder: (_, item, index) {
                return BuildShippingAddressItem(
                  address: item,
                  onTap: () => controller.onSelectAddress(context, item),
                );
              },
              noItemsFoundIndicatorBuilder: (context) => Center(
                child: Text(
                  tr("noAddressesFound"),
                  style: AppTextStyle.s14_w400(color: context.colors.grey),
                ),
              ),
              firstPageProgressIndicatorBuilder: (_) => Column(
                children: List.generate(2, (index) {
                  return Container(
                    height: 80.h,
                    margin: Dimens.marginBottom12,
                    decoration: CustomDecoration(
                      thisColor: context.colors.customBackground,
                      radius: Dimens.borderRadius10PX,
                      boxBorder: Border.all(color: context.colors.borderColor),
                    ),
                  );
                }),
              ),
            ),
          ),
        );
      },
    );
  }
}
