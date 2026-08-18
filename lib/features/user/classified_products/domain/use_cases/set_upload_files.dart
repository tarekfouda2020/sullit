import 'dart:io';

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetUploadFiles implements UseCase<bool, List<File>> {
  @override
  Future<bool> call(List<File> params) async {
    var result =
        await getIt<ClassifiedProductsRepository>().setUploadFiles(params);
    return result.fold((l) => false, (r) => r);
  }
}
