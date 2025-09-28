// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardsModel _$$_DashboardsModelFromJson(Map<String, dynamic> json) =>
    _$_DashboardsModel(
      cartCount: (json['cart_products_count'] as num).toInt(),
      wishlistCount: (json['wishlist_products_count'] as num).toInt(),
      ordersCount: (json['orders_products_count'] as num).toInt(),
      defaultAddress: json['default shipping_address'] == null
          ? null
          : AddressModel.fromJson(
              json['default shipping_address'] as Map<String, dynamic>),
      customerPackage: json['customer_package'] == null
          ? null
          : PackagesModel.fromJson(
              json['customer_package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DashboardsModelToJson(_$_DashboardsModel instance) =>
    <String, dynamic>{
      'cart_products_count': instance.cartCount,
      'wishlist_products_count': instance.wishlistCount,
      'orders_products_count': instance.ordersCount,
      'default shipping_address': instance.defaultAddress?.toJson(),
      'customer_package': instance.customerPackage?.toJson(),
    };
