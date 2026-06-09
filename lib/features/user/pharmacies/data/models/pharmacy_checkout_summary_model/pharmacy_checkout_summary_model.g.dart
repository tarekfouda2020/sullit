// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_checkout_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyCheckoutSummaryModel _$$_PharmacyCheckoutSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyCheckoutSummaryModel(
      orderSummary: ShippingSummaryModel.fromJson(
          json['order_summary'] as Map<String, dynamic>),
      orderDetails: PharmacyOrderDetailsModel.fromJson(
          json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PharmacyCheckoutSummaryModelToJson(
        _$_PharmacyCheckoutSummaryModel instance) =>
    <String, dynamic>{
      'order_summary': instance.orderSummary.toJson(),
      'order': instance.orderDetails.toJson(),
    };
