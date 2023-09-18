import 'package:flutter_tdd/features/user/classified_products/domain/models/exited_image.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';

class EditGallaryImages {
  ExitedImages images;
  List<FileDomainModel> addedImages;

  EditGallaryImages({
     required this.images,
     required this.addedImages,
  });
}
