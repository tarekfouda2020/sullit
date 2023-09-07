import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/dashboard/data/models/shipping_address_model/shipping_address_model.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/models/dashboards.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboards_model.freezed.dart';

part 'dashboards_model.g.dart';

@freezed
@immutable
class DashboardsModel extends BaseApiModel<Dashboards> with _$DashboardsModel {
  const DashboardsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DashboardsModel({
    @JsonKey(name: 'cart_products_count') required int cartCount,
    @JsonKey(name: 'wishlist_products_count') required int wishlistCount,
    @JsonKey(name: 'orders_products_count') required int ordersCount,
    @JsonKey(name: 'default shipping_address')  ShippingAddressModel? defaultAddress,
  }) = _DashboardsModel;

  factory DashboardsModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardsModelFromJson(json);

  @override
  Dashboards toDomainModel() {
    return Dashboards(
      cartCount: cartCount,
      ordersCount: ordersCount,
      wishlistCount: wishlistCount,
      defaultAddress: defaultAddress?.toDomainModel(),
    );
  }
}
