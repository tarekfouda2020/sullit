import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/price_range_model/price_range_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/seller_product_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_products_model.freezed.dart';

part 'seller_products_model.g.dart';

@freezed
class SellerProductsModel extends BaseApiModel<SellerProductDomainModel>
    with _$SellerProductsModel {
  const SellerProductsModel._();

  @JsonSerializable(explicitToJson: true)
  factory SellerProductsModel({
    @JsonKey(name: "section_products") required SectionProductsModel sectionProducts,
    @JsonKey(name: 'price_range') required PriceRangeModel priceRange,
  }) = _SellerProductsModel;

  factory SellerProductsModel.fromJson(Map<String, dynamic> json) =>
      _$SellerProductsModelFromJson(json);

  @override
  SellerProductDomainModel toDomainModel() {
    return SellerProductDomainModel(
        sectionProductModel: sectionProducts.toDomainModel(),
        priceRange: priceRange.toDomainModel());
  }
}

@freezed
class SectionProductsModel extends BaseApiModel<SellerSectionProductModel>
    with _$SectionProductsModel {
  const SectionProductsModel._();

  @JsonSerializable(explicitToJson: true)
  factory SectionProductsModel({
    required SellerPaginationData pagination,
    required List<ProductCardModel> products,
  }) = _SectionProductsModel;

  factory SectionProductsModel.fromJson(Map<String, dynamic> json) =>
      _$SectionProductsModelFromJson(json);

  @override
  SellerSectionProductModel toDomainModel() {
    return SellerSectionProductModel(
        products: products.map((e) => e.toDomainModel()).toList(),
        pagination: pagination.toDomainModel());
  }
}

@freezed
class SellerPaginationData extends BaseApiModel<SellerPaginationModel>
    with _$SellerPaginationData {
  const SellerPaginationData._();

  @JsonSerializable(explicitToJson: true)
  factory SellerPaginationData({
    @JsonKey(name: "total_items") required int totalItems,
    @JsonKey(name: "count_items") required int countItems,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "current_page") required int currentPage,
    @JsonKey(name: "next_page_url") required String nextPageUrl,
    @JsonKey(name: "perv_page_url") required String pervPageUrl,
  }) = _SellerPaginationData;

  factory SellerPaginationData.fromJson(Map<String, dynamic> json) =>
      _$SellerPaginationDataFromJson(json);

  @override
  SellerPaginationModel toDomainModel() {
    return SellerPaginationModel(
      totalItems: totalItems,
      countItems: countItems,
      perPage: perPage,
      totalPages: totalPages,
      currentPage: currentPage,
      nextPageUrl: nextPageUrl,
      pervPageUrl: pervPageUrl,
    );
  }
}
