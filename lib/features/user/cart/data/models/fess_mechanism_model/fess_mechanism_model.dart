
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fess_mechanism_model.freezed.dart';
part 'fess_mechanism_model.g.dart';

@freezed
class FessMechanismModel with _$FessMechanismModel{
  const FessMechanismModel._();
  @JsonSerializable(explicitToJson: true)
  factory FessMechanismModel({
    required  String title,
    required  FessModel delivery,
    required  FessModel service,
    required  FessModel technology,
    // required  FessModel environment,
  }) = _FessMechanismModel;


  factory FessMechanismModel.fromJson(Map<String, dynamic> json) =>
      _$FessMechanismModelFromJson(json);
}

@freezed
class FessModel with _$FessModel{
  const FessModel._();
  @JsonSerializable(explicitToJson: true)
  factory FessModel({
    required  String title,
    required  String description,
    required  String icon,
  }) = _FessModel;


  factory FessModel.fromJson(Map<String, dynamic> json) =>
      _$FessModelFromJson(json);
}