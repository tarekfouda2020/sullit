import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/pagination_model/pagination_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/seller_product_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_products_model.freezed.dart';

part 'seller_products_model.g.dart';

@freezed
class SellerProductsModel extends BaseApiModel<SellerProductDomainModel> with _$SellerProductsModel {
  const SellerProductsModel._();

  @JsonSerializable(explicitToJson: true)
  factory SellerProductsModel({
    required ShopModel shop,
    @JsonKey(name: "section_products") required SectionProductsModel sectionProducts,
  }) = _SellerProductsModel;

  factory SellerProductsModel.fromJson(Map<String, dynamic> json) => _$SellerProductsModelFromJson(json);

  @override
  SellerProductDomainModel toDomainModel() {
    return SellerProductDomainModel(
        sectionProductModel: sectionProducts.toDomainModel(),
        shop: shop.toDomainModel()
    );
  }
}

@freezed
class SectionProductsModel extends BaseApiModel<SellerSectionProductModel> with _$SectionProductsModel {
  const SectionProductsModel._();

  @JsonSerializable(explicitToJson: true)
  factory SectionProductsModel({
    required PaginationModel pagination,
    required List<ProductModel> products,
  }) = _SectionProductsModel;

  factory SectionProductsModel.fromJson(Map<String, dynamic> json) => _$SectionProductsModelFromJson(json);

  @override
  SellerSectionProductModel toDomainModel() {
    return SellerSectionProductModel(
        products: products.map((e) => e.toDomainModel()).toList(),
        pagination: pagination.toDomainModel()
    );
  }
}
