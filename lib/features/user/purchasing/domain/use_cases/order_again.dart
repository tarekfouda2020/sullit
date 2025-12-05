import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class OrderAgain extends UseCase<String, int> {
  @override
  Future<String> call(int params) async {
    var result = await getIt<PurchasingRepository>().reOrder(params);
    return result.fold((l) => "", (r) => r);
  }
}
