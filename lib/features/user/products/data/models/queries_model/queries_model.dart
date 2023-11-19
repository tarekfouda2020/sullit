import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/user_details_model/user_details_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/queries.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'queries_model.freezed.dart';
part 'queries_model.g.dart';

@freezed
@immutable
class QueriesModel extends BaseApiModel<Queries> with _$QueriesModel {
  const QueriesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory QueriesModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'question') required String question,
    @JsonKey(name: 'reply') required String reply,
    @JsonKey(name: 'user') required UserDetailsModel userDetails,
  }) = _QueriesModel;

  factory QueriesModel.fromJson(Map<String, dynamic> json) =>
      _$QueriesModelFromJson(json);

  @override
  Queries toDomainModel() {
    return Queries(
      id: id,
      question: question,
      reply: reply,
      userDetails: userDetails.toDomainModel(),
    );
  }
}
