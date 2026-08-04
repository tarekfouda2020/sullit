import 'package:flutter_tdd/features/user/gift_card/domain/enum/membership_type_enum.dart';

class MembershipModel {
  bool isSelected;
  bool isUsed;
  final MembershipTypeEnum membershipType;
  final double price;

  MembershipModel(
      {required this.membershipType,
      required this.price,
      this.isSelected = false,
      this.isUsed = false});
}
