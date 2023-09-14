import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/uploaded_files_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/file_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetUploadedFiles
    implements UseCase<List<FileDomainModel>, UploadedFilesParams> {
  @override
  Future<List<FileDomainModel>> call(UploadedFilesParams params) async {
    var result = await getIt<ClassifiedProductsRepository>().getUploadedFiles(params);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
