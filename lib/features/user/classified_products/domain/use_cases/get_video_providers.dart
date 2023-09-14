import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/video_provider.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetVideoProviders implements UseCase<List<VideoProvider>, bool> {
  @override
  Future<List<VideoProvider>> call(bool param) async {
    var result = await getIt<ClassifiedProductsRepository>().getVideoProviders(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
