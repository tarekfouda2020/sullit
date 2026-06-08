import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class WalletItem extends BaseDomainModel {
  int id;
  String date;
  String dmoun;
  String paymentMethod;
  String approval;

  WalletItem(
      {required this.id,
      required this.date,
      required this.dmoun,
      required this.paymentMethod,
      required this.approval});
}
