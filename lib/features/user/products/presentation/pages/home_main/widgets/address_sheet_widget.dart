part of 'home_main_widgets_imports.dart';

class AddressSheetWidget extends StatelessWidget {
  final HomeMainController controller;

  const AddressSheetWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:kToolbarHeight+10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 26, bottom: 24, right: 33, left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetHeaderWidget(
              title: "My Addresses",
            ),
            Gaps.vGap24,
            Expanded(
              child: CustomRefreshIndicatorWidget(
                onRefresh: () async => await controller.getAddress(1),
                child: PagedListView<int, AddressDomainModel>(
                  pagingController: controller.pagingController,
                  // padding: Dimens.paddingHorizontal20PX,
                  builderDelegate: PagedChildBuilderDelegate<AddressDomainModel>(
                    itemBuilder: (_, item, index) {
                      return AddressItemWidget(
                          onTap: () {
                            controller.selectAddress(context,item );
                          },
                          address: item);
                    },
                    noItemsFoundIndicatorBuilder: (cxt) => const BuildAddressesEmptyView(),
                    firstPageProgressIndicatorBuilder: (_) => const BuildAddressLoading(),
                    newPageProgressIndicatorBuilder: (context) => SizedBox(
                      width: 15,
                      height: 15,
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
            ),
            Gaps.vGap24,
            DefaultButton(
              margin: EdgeInsets.zero,
              title: tr("Confirm"),
              textColor: context.colors.white,
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            Gaps.vGap12,
            DefaultButton(
              margin: EdgeInsets.zero,
              title: tr("+ Add New Address"),
              textColor: context.colors.primary,
              color: context.colors.white,
              borderColor: context.colors.primary,
              onTap: () {
                AutoRouter.of(context).push(const AddNewAddressRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
