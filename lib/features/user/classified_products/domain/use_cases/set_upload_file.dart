import 'dart:io';

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetUploadFile implements UseCase<bool, File> {
  @override
  Future<bool> call(File param) async {
    var result = await getIt<ClassifiedProductsRepository>().setUploadFile(param);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
