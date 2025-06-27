part of 'membership_subscribe_widgets_imports.dart';

class VipPlansBottomSheetWidget extends StatelessWidget {
  final MembershipSubscribeController controller;

  const VipPlansBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetHeaderWidget(title: 'VIP Membership',),
            Gaps.vGap24,
            Flexible(
              child: SingleChildScrollView(
                child: BlocBuilder<GenericBloc<List<MembershipModel>>, GenericState<List<MembershipModel>>>(
                  bloc: controller.membershipsCubit,
                  builder: (context, state) {
                    return Column(
                      children: List.generate(state.data.length,
                              (index) {
                        return MembershipItemWidget(
                            model: state.data[index],
                            isBottomSheet: true,
                          onSelect: () => controller.updateSelectedMemberShip(state.data[index]),
                        );
                      }),
                    );
                  },
                ),
              ),
            ),
            AgreeTermsConditionsWidget(controller: controller),
            PayGiftCardButtonWidget(controller: controller)
          ],
        ),
      ),
    );
  }
}
