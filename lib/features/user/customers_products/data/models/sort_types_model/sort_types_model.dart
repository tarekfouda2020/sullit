import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/sort_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_types_model.freezed.dart';
part 'sort_types_model.g.dart';

@freezed
@immutable
class SortTypesModel extends BaseApiModel<SortTypes> with _$SortTypesModel {
  const SortTypesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SortTypesModel({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") required String type,
  }) = _SortTypesModel;

  factory SortTypesModel.fromJson(Map<String, dynamic> json) =>
      _$SortTypesModelFromJson(json);

  @override
  SortTypes toDomainModel() {
    return SortTypes(
      name: name,
      type: type,
    );
  }
}
