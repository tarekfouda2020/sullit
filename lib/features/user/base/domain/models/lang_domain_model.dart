import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/base/data/enums/lang_type_enum.dart';

class LangDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String code;
  final String logo;

  LangDomainModel({
    required this.id,
    required this.name,
    required this.code,
    required this.logo,
  });


  LangTypeEnum getLangType(){
    switch(code){
      case "en" : return LangTypeEnum.english;
      case "bd" : return LangTypeEnum.bangladesh;
      case "sa" : return LangTypeEnum.arabic;
      default : return LangTypeEnum.english;
    }
  }


}
