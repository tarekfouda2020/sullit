import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_package.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetCusPackages implements UseCase<List<CusPackage>, bool> {
  @override
  Future<List<CusPackage>> call(bool param) async {
    var result = await getIt<ClassifiedProductsRepository>().getPackages(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
