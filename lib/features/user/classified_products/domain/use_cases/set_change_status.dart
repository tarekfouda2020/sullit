import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetChangeStatus extends UseCase<bool, int> {
  @override
  Future<bool> call(int params) async {
    var result =
        await getIt<ClassifiedProductsRepository>().changeStatus(params);
    return result.fold((l) => false, (r) => r);
  }
}
