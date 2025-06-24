part of 'vip_memberships_imports.dart';

class VipMembershipsController {


  MembershipModel get currentMemberShip => MembershipModel(membershipType:MembershipTypeEnum.executive , price: 24.00,isUsed: true);

  MembershipModel get otherMemberShip => MembershipModel(membershipType:MembershipTypeEnum.classic , price: 12.00);


  void renewPlan() {

  }

  void changePlan(){}


}