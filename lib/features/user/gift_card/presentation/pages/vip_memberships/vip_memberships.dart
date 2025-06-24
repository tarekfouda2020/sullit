part of 'vip_memberships_imports.dart';

class VipMemberShips extends StatefulWidget {
  const VipMemberShips({super.key});

  @override
  State<VipMemberShips> createState() => _VipMemberShipsState();
}

class _VipMemberShipsState extends State<VipMemberShips> {

  final VipMembershipsController controller = VipMembershipsController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "VIP Subscriptions",elevation: 0),
      body: ListView(
        padding: Dimens.paddingHorizontal20PX,
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("VIP Subscriptions",
               style: AppTextStyle.s18_w700(color: context.colors.black),
               ),
             ],
           ),
          Gaps.vGap10,
          MembershipItemWidget(model: controller.currentMemberShip, isBottomSheet: false),
          RenewPlanButtonWidget(controller: controller),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Other Plans",
                style: AppTextStyle.s18_w700(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          MembershipItemWidget(model: controller.otherMemberShip, isBottomSheet: false),
          ChangePlanButtonWidget(controller: controller,isDisabled: true)
        ],
      ),
    );
  }
}
