import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class VideoProvider extends BaseDomainModel {
  String name;

  String provider;

  VideoProvider({
    required this.name,
    required this.provider,
  });
}
