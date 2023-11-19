import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_item_model.freezed.dart';
part 'wallet_item_model.g.dart';

@freezed
@immutable
class WalletItemModel extends BaseApiModel<WalletItem> with _$WalletItemModel{
  const WalletItemModel._();
  @JsonSerializable(explicitToJson: true)
  const factory WalletItemModel({
    required int id ,
    required String date,
    required String dmount ,
    @JsonKey(name:"payment_method") required String paymentMethod,
    required String approval
  }) = _WalletItemModel;


  factory WalletItemModel.fromJson(Map<String, dynamic> json) =>
      _$WalletItemModelFromJson(json);

  @override
  WalletItem toDomainModel() {
    return WalletItem(
      id: id,
      date: date,
      dmoun: dmount,
      approval: approval,
      paymentMethod: paymentMethod
    );
  }
}
