import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_card_model.freezed.dart';
part 'shop_card_model.g.dart';

@freezed
@immutable
class ShopCardModel extends BaseApiModel<ShopCardDomainModel> with _$ShopCardModel {
  const ShopCardModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShopCardModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'has_branches') required bool hasBranches,
    required String name,
    required String type,
    @JsonKey(name: 'type_label') required String typeLabel,
    required String logo,
    required String email,
    required String? address,
    required String phone,
    required double rating,
    required List<String> sliders,
    required bool follow,
    @JsonKey(name: 'categories_names')  String? categoriesNames,
  }) = _ShopCardModel;

  factory ShopCardModel.fromJson(Map<String, dynamic> json) =>
      _$ShopCardModelFromJson(json);

  @override
  ShopCardDomainModel toDomainModel() {
    return ShopCardDomainModel(
      id: id,
      userId: userId,
      hasBranches: hasBranches,
      name: name,
      type: type,
      typeLabel: typeLabel,
      logo: logo,
      email: email,
      address: address,
      phone: phone,
      rating: rating,
      sliders: sliders,
      follow: follow,
      categoriesNames: categoriesNames ?? "",
    );
  }
}
