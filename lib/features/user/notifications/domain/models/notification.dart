import 'dart:developer';

import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/base/data/enums/lang_type_enum.dart';
import 'package:intl/intl.dart';

import '../../../../../core/helpers/lang_code_helper.dart';
import '../entities/notify_enum.dart';

class NotificationDomainModel extends BaseDomainModel {
  String id;
  int? orderId;
  String text;
  String type;
  String createdAt;

  NotificationDomainModel({
    required this.id,
     this.orderId,
    required this.text,
    required this.type,
    required this.createdAt,
  });



  bool get isShareHolderOffer => type == NotifyEnum.shareholderProducts.getValue();


  String normalizeDate() {
    try {
      return  createdAt;
      final normalized = createdAt
          .replaceAll("am", "AM")
          .replaceAll("pm", "PM");

      final parseFormatter = DateFormat("MMMM d yyyy, h:mm a", "en_US");

      final date = parseFormatter.parse(normalized);

      final formatFormatter = DateFormat("d MMMM yyyy ،h:mm a", _getLang());

      return formatFormatter
          .format(date)
          .replaceAll("AM", "am")
          .replaceAll("PM", "pm");
    } catch (e) {
      log("==>> error $e");
      return createdAt;
    }
  }


   String _getLang(){
    var lang = "en";
    var code = GlobalState.instance.get(LangCodeHelper.langKey);
    if (code == LangTypeEnum.arabic.getLangCode()) {
      lang = LangCodeHelper.langAR;
    }
    if (code == LangTypeEnum.bangladesh.getLangCode()) {
      lang = LangCodeHelper.langBN;
    }
    if (code == LangTypeEnum.urdu.getLangCode()) {
      lang = LangCodeHelper.langUR;
    }
    return lang;
  }


}
