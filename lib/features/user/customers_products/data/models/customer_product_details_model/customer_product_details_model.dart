import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/customer_product_model/customer_product_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_product_details_model.freezed.dart';
part 'customer_product_details_model.g.dart';

@freezed
@immutable
class CustomerProductDetailsModel extends BaseApiModel<CustomersProductDetails>
    with _$CustomerProductDetailsModel {
  const CustomerProductDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CustomerProductDetailsModel({
    @JsonKey(name: "customer_product")
    required CustomerProductModel customerProduct,
    @JsonKey(name: "related_customer_products")
    required List<CustomerProductModel> relatedProducts,
  }) = _CustomerProductDetailsModel;

  factory CustomerProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerProductDetailsModelFromJson(json);

  @override
  CustomersProductDetails toDomainModel() {
    return CustomersProductDetails(
      customerProduct: customerProduct.toDomainModel(),
      relatedProducts: relatedProducts.map((e) => e.toDomainModel()).toList(),
    );
  }
}
