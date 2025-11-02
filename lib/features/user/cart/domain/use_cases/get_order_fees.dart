import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/data/models/fess_mechanism_model/fess_mechanism_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class GetOrderFees implements UseCase<FessMechanismModel?, bool> {

  @override
  Future<FessMechanismModel?> call(bool param) async {
    var result = await getIt<CartRepository>().getFees(param);
    return result.fold(
          (l) =>  null,
          (r) => r,
    );
  }
}