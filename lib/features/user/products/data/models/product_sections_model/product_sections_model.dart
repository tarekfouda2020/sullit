import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_sections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_sections_model.freezed.dart';

part 'product_sections_model.g.dart';

@freezed
@immutable
class ProductSectionsModel extends BaseApiModel<ProductSections>
    with _$ProductSectionsModel {
  const ProductSectionsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductSectionsModel({
    required int id,
    required String name,
    required String description,
    required List<ProductCardModel> products,
  }) = _ProductSectionsModel;

  factory ProductSectionsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSectionsModelFromJson(json);

  @override
  ProductSections toDomainModel() {
    return ProductSections(
      id: id,
      name: name,
      description: description,
      products: products.map((e) => e.toDomainModel()).toList(),
    );
  }
}
