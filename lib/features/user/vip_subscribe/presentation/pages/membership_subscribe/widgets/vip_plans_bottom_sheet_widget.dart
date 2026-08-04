part of 'membership_subscribe_widgets_imports.dart';

class VipPlansBottomSheetWidget extends StatelessWidget {
  final MembershipSubscribeController controller;

  const VipPlansBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      margin: const EdgeInsets.only(top: kToolbarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(title: tr('vipMembership')),
          Gaps.vGap24,
          Flexible(
            child: CustomRefreshIndicatorWidget(
                onRefresh: () => controller.getSubscriptions(1),
                child: PagedListView<int, VipSubscribeDomainModel>(
                  pagingController: controller.pagingController,
                  builderDelegate:
                      PagedChildBuilderDelegate<VipSubscribeDomainModel>(
                    itemBuilder: (_, item, index) => Visibility(
                      visible: item.byInvite == false,
                      child: MembershipItemWidget(
                        model: item,
                        isBottomSheet:
                            controller.currentSubscription?.price != item.price,
                        showVip: true,
                        showBlur:
                            controller.currentSubscription?.price != item.price,
                        onSelect: () =>
                            controller.updateSelectedMemberShip(item),
                      ),
                    ),
                    noItemsFoundIndicatorBuilder: (_) => Center(
                      child: Text(
                        tr("noSubscriptions"),
                        style:
                            AppTextStyle.s16_w700(color: context.colors.black),
                      ),
                    ),
                    firstPageProgressIndicatorBuilder: (_) => Column(
                      children: List.generate(
                        3,
                        (_) => const MembershipItemShimmerWidget(),
                      ),
                    ),
                  ),
                )),
          ),
          Gaps.vGap10,
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.isDataLoaded,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AgreeTermsConditionsWidget(controller: controller),
                    Gaps.vGap8,
                    PayMembershipButtonWidget(controller: controller),
                  ],
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BuildShimmerItem(
                      height: 20,
                      width: 200,
                      borderRadius: Dimens.borderRadius20PX,
                    ),
                    Gaps.vGap10,
                    BuildShimmerItem(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      borderRadius: Dimens.borderRadius30PX,
                    ),
                    Gaps.vGap20,
                  ],
                );
              }
            },
          ),
          Gaps.vGap(Dimens.iosBottomDp(context))
        ],
      ),
    );
  }
}
