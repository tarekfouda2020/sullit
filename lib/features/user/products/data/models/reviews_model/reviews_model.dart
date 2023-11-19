import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/user_details_model/user_details_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews_model.freezed.dart';
part 'reviews_model.g.dart';

@freezed
@immutable
class ReviewsModel extends BaseApiModel<Reviews> with _$ReviewsModel {
  const ReviewsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ReviewsModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'rate') required int rate,
    @JsonKey(name: 'comment') required String comment,
    @JsonKey(name: 'user') required UserDetailsModel userReview,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);

  @override
  Reviews toDomainModel() {
    return Reviews(
      id: id,
      comment: comment,
      createdAt: createdAt,
      rate: rate,
      userReview: userReview.toDomainModel(),
    );
  }
}
