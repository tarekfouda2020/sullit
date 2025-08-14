// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GiftCardModel _$$_GiftCardModelFromJson(Map<String, dynamic> json) =>
    _$_GiftCardModel(
      shippingSummaryModel: ShippingSummaryModel.fromJson(
          json['summary'] as Map<String, dynamic>),
      appliedGiftCard: json['applied_gift_card'] as String?,
    );

Map<String, dynamic> _$$_GiftCardModelToJson(_$_GiftCardModel instance) =>
    <String, dynamic>{
      'summary': instance.shippingSummaryModel.toJson(),
      'applied_gift_card': instance.appliedGiftCard,
    };
