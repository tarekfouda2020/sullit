import '../../../../../core/models/domain_model/base_domain_model.dart';

class CountryDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String code;

  CountryDomainModel({
    required this.id,
    required this.name,
    required this.code,
  });


}