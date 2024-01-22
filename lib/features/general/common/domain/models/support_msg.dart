import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SupportMsg extends BaseDomainModel {
  bool isSender;
  String msgType;
  String msg;
  String createdAt;

  SupportMsg({
    required this.isSender,
    required this.msgType,
    required this.msg,
    required this.createdAt,
  });
}
