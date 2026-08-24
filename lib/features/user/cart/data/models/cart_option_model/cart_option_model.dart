import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_option_model.freezed.dart';
part 'cart_option_model.g.dart';

@freezed
class CartOptionModel extends BaseApiModel<CartOption> with _$CartOptionModel {
  const CartOptionModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartOptionModel({
    required CartOptionInfoModel option,
    required List<CartOptionValueModel> values,
  }) = _CartOptionModel;

  factory CartOptionModel.fromJson(Map<String, dynamic> json) =>
      _$CartOptionModelFromJson(json);

  @override
  CartOption toDomainModel() {
    return CartOption(
      option: option.toDomainModel(),
      values: values.map((e) => e.toDomainModel()).toList(),
    );
  }
}

@freezed
class CartOptionInfoModel extends BaseApiModel<CartOptionInfo>
    with _$CartOptionInfoModel {
  const CartOptionInfoModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartOptionInfoModel({
    required int id,
    required String name,
    required String type,
    @JsonKey(name: 'is_required') required bool isRequired,
    @JsonKey(name: 'max_select') int? maxSelect,
  }) = _CartOptionInfoModel;

  factory CartOptionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CartOptionInfoModelFromJson(json);

  @override
  CartOptionInfo toDomainModel() {
    return CartOptionInfo(
      id: id,
      name: name,
      type: type,
      isRequired: isRequired,
      maxSelect: maxSelect,
    );
  }
}

@freezed
class CartOptionValueModel extends BaseApiModel<CartOptionValue>
    with _$CartOptionValueModel {
  const CartOptionValueModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartOptionValueModel({
    required int id,
    required String name,
    required String price,
  }) = _CartOptionValueModel;

  factory CartOptionValueModel.fromJson(Map<String, dynamic> json) =>
      _$CartOptionValueModelFromJson(json);

  @override
  CartOptionValue toDomainModel() {
    return CartOptionValue(
      id: id,
      name: name,
      price: price,
    );
  }
}
