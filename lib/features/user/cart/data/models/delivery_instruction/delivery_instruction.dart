import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';

part 'delivery_instruction.freezed.dart';

part 'delivery_instruction.g.dart';

@freezed
class DeliveryInstruction extends BaseApiModel<DeliveryInstructionModel>
    with _$DeliveryInstruction {
  const DeliveryInstruction._();

  @JsonSerializable(explicitToJson: true)
  factory DeliveryInstruction({
    required String name,
    required String image,
    required int id,
  }) = _DeliveryInstruction;

  factory DeliveryInstruction.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInstructionFromJson(json);

  @override
  DeliveryInstructionModel toDomainModel() {
    return DeliveryInstructionModel(
      id: id,
      image: image,
      name: name,
    );
  }
}
