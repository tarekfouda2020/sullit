import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class FileDomainModel extends BaseDomainModel{
  int id;
  String fileOriginalName;
  String fileName;
  String url;
  int fileSize;
  String extension;
  String type;
  bool selected = false ;

  FileDomainModel({
    required this.id,
    required this.fileOriginalName,
    required this.fileName,
    required this.url,
    required this.fileSize,
    required this.extension,
    required this.type,
  });
}
