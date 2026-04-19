part of 'widgets_imports.dart';

class PharmacyAddressListWidget extends StatelessWidget {
  final PharmacyAddressController controller;

  const PharmacyAddressListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.refreshCubit,
      builder: (context, state) {
        return PagedListView<int, AddressDomainModel>(
          pagingController: controller.pagingController,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          builderDelegate: PagedChildBuilderDelegate<AddressDomainModel>(
            itemBuilder: (_, item, index) {
              return PharmacyAddressItemWidget(
                address: item,
                controller: controller,
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
        );
      },
    );
  }
}
