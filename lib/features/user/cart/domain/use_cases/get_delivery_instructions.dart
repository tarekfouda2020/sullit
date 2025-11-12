
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class GetDeliveryInstructions implements UseCase<List<DeliveryInstructionModel>, bool> {

  @override
  Future<List<DeliveryInstructionModel>> call(bool param) async {
    var result = await getIt<CartRepository>().getInstructions(param);
    return result.fold(
          (l) => [],
          (r) => r,
    );
  }


}