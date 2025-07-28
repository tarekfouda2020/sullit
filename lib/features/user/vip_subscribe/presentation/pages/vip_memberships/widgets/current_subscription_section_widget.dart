part of 'vip_memberships_widgets_imports.dart';

class CurrentSubscriptionSectionWidget extends StatelessWidget {
  final VipSubscribeDomainModel model;
  final VipMembershipsController controller;
  const CurrentSubscriptionSectionWidget({super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Current Plan",
                style: AppTextStyle.s18_w700(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          MembershipItemWidget(model: model, isBottomSheet: false),
          RenewPlanButtonWidget(controller: controller),
      ],
    );
  }
}
