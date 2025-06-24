part of 'membership_subscribe_imports.dart';

class MembershipSubscribeController{

  final GenericBloc<bool> termCubit = GenericBloc(false);
  final GenericBloc<List<MembershipModel>> membershipsCubit = GenericBloc([]);

  
  final List<MembershipModel> membershipList = [
    MembershipModel(membershipType: MembershipTypeEnum.executive, price: 24.00,isSelected: true),
    MembershipModel(membershipType: MembershipTypeEnum.classic, price: 12.00),
  ];

  MembershipSubscribeController(){
    membershipsCubit.onUpdateData(membershipList);
  }


  void showVipPlansBottomSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) =>   VipPlansBottomSheetWidget(controller: this),
    );
  }


  void payGiftCard(BuildContext context){
    // AutoRouter.of(context).push(PaymentRoute(transactionUrl: ""));
  }

  void updateSelectedMemberShip(MembershipModel membershipModel){
    var data = membershipsCubit.state.data;
    for(var item in data){
      item.isSelected = false;
    }
    membershipModel.isSelected = true;
    membershipsCubit.onUpdateData(data);
  }


}