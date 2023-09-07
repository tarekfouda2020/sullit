import 'dart:io';

import 'package:flutter_tdd/core/models/domain_models/image_domain_model.dart';

class EditImagesDomainModel {
  List<File> addedImages;
  List<ImageDomainModel> exitedImages;

  EditImagesDomainModel({
    required this.addedImages,
    required this.exitedImages,
  });
}