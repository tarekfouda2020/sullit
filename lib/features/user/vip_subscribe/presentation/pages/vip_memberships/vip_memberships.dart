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
      appBar: DefaultAppBar(title: tr("vipMembership"), elevation: 0),
      body: BlocBuilder<GenericBloc<VipCurrentPlanDomainModel?>, GenericState<VipCurrentPlanDomainModel?>>(
        bloc: controller.currentSubscriptionBloc,
        builder: (context, state) {
         if(state is GenericUpdateState){
           return ListView(
             padding: Dimens.paddingHorizontal20PX,
             children: [
               if(state.data!.currentSubscription!=null)
               CurrentSubscriptionSectionWidget(controller: controller, model: state.data!.currentSubscription!)
               else
                 const SeeMemberShipsButtonWidget(),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(tr("otherPlans"),
                     style: AppTextStyle.s18_w700(color: context.colors.black),
                   ),
                 ],
               ),
               Gaps.vGap10,
              ...List.generate(state.data!.otherSubscriptions.length, (index) {
                return  Visibility(
                  visible: state.data!.otherSubscriptions[index].byInvite == false,
                  child: MembershipItemWidget(
                      model: state.data!.otherSubscriptions[index],
                      isBottomSheet: false,
                      onSelect: ()=> controller.selectMembership(state.data!.otherSubscriptions[index]) ,
                  ),
                );
              }),
               ChangePlanButtonWidget(controller: controller)
             ],
           );
         }else{
           return const VipMembershipsShimmerWidget();
         }
        },
      ),
    );
  }
}
