import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SavedPrescriptionModel extends BaseDomainModel {
  final int id;
  final String name;
  final String url;
  final String type;
  final String extension;
  final String createdAt;
  final String lastUsedAt;

  SavedPrescriptionModel({
    required this.id,
    required this.name,
    required this.url,
    required this.type,
    required this.extension,
    required this.createdAt,
    required this.lastUsedAt,
  });

  static const List<String> _imageExtensions = [
    'jpg',
    'jpeg',
    'png',
    'gif',
    'bmp',
    'webp',
  ];

  bool get isImage => _imageExtensions.contains(extension.toLowerCase());

  String get fileName => "$name.$extension";
}
