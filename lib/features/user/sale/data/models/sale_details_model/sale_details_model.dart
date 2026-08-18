import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_details_model.freezed.dart';
part 'sale_details_model.g.dart';

@freezed
@immutable
class SaleDetailsModel extends BaseApiModel<SaleDetailsDomainModel>
    with _$SaleDetailsModel {
  const SaleDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SaleDetailsModel(
      {required int id,
      required String title,
      required DateTime date,
      required String banner,
      required List<ProductCardModel> products}) = _SaleDetailsModel;

  factory SaleDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$SaleDetailsModelFromJson(json);

  @override
  SaleDetailsDomainModel toDomainModel() {
    return SaleDetailsDomainModel(
        id: id,
        title: title,
        date: date,
        banner: banner,
        products: products.map((e) => e.toDomainModel()).toList());
  }
}
