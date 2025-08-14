// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftCardAppliedCartModel _$$_GiftCardAppliedCartModelFromJson(
        Map<String, dynamic> json) =>
    _$_GiftCardAppliedCartModel(
      shippingSummaryModel: ShippingSummaryModel.fromJson(
          json['summary'] as Map<String, dynamic>),
      appliedGiftCard: json['applied_gift_card'] as String?,
    );

Map<String, dynamic> _$$_GiftCardAppliedCartModelToJson(
        _$_GiftCardAppliedCartModel instance) =>
    <String, dynamic>{
      'summary': instance.shippingSummaryModel.toJson(),
      'applied_gift_card': instance.appliedGiftCard,
    };
