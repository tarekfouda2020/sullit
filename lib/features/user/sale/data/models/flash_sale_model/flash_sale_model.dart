import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_sale_model.freezed.dart';
part 'flash_sale_model.g.dart';

@freezed
@immutable
class FlashSaleModel extends BaseApiModel<FlashSale> with _$FlashSaleModel {
  const FlashSaleModel._();
  @JsonSerializable(explicitToJson: true)
  const factory FlashSaleModel(
      {required int id,
      required String title,
      required DateTime date,
      required String banner}) = _FlashSaleModel;

  factory FlashSaleModel.fromJson(Map<String, dynamic> json) =>
      _$FlashSaleModelFromJson(json);

  @override
  FlashSale toDomainModel() {
    return FlashSale(id: id, title: title, banner: banner, date: date);
  }
}
