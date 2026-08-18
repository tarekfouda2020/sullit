import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_model.freezed.dart';
part 'drop_down_model.g.dart';

@freezed
@immutable
class DropDownModel with _$DropDownModel {
  const DropDownModel._();
  @JsonSerializable(explicitToJson: true)
  const factory DropDownModel({
    required int id,
    required String name,
  }) = _DropDownModel;

  factory DropDownModel.fromJson(Map<String, dynamic> json) =>
      _$DropDownModelFromJson(json);
}
