import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/addresses/data/models/address_model/address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@immutable
class UserModel extends BaseApiModel<UserDomainModel> with _$UserModel {
  const UserModel._();

  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "avatar_original") required String avatarOriginal,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "full_phone") required String fullPhone,
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "token") required String token,
    @JsonKey(name: "token_type") required String tokenType,
    @JsonKey(name: "phone_is_active") required bool isPhoneActive,
    @JsonKey(name: "email_is_active") required bool isEmailActive,
    @JsonKey(name: "has_valid_subscription") required bool hasValidSubscription,
    @JsonKey(name: "is_shareholder") required bool isShareHolder,
    @JsonKey(name: "address") AddressModel? address,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  UserDomainModel toDomainModel() {
    return UserDomainModel(
        id: id,
        email: email,
        phone: phone,
        fullPhone: fullPhone,
        countryCode: countryCode,
        name: name,
        avatar: avatar,
        token: token,
        avatarOriginal: avatarOriginal,
        tokenType: tokenType,
        isPhoneActive: isPhoneActive,
        isEmailActive: isEmailActive,
        hasValidSubscription: hasValidSubscription,
        isShareHolder: isShareHolder,
        address: address?.toDomainModel());
  }
}
