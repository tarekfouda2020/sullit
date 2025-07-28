// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vip_current_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VipCurrentPlanModel _$VipCurrentPlanModelFromJson(Map<String, dynamic> json) {
  return _VipCurrentPlanModel.fromJson(json);
}

/// @nodoc
mixin _$VipCurrentPlanModel {
  /// can be null if user is not subscribed in any plan
  @JsonKey(name: "current_subscription")
  VipSubscribeModel? get currentSubscription =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "other_subscriptions")
  List<VipSubscribeModel> get otherSubscriptions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VipCurrentPlanModelCopyWith<VipCurrentPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VipCurrentPlanModelCopyWith<$Res> {
  factory $VipCurrentPlanModelCopyWith(
          VipCurrentPlanModel value, $Res Function(VipCurrentPlanModel) then) =
      _$VipCurrentPlanModelCopyWithImpl<$Res, VipCurrentPlanModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_subscription")
      VipSubscribeModel? currentSubscription,
      @JsonKey(name: "other_subscriptions")
      List<VipSubscribeModel> otherSubscriptions});

  $VipSubscribeModelCopyWith<$Res>? get currentSubscription;
}

/// @nodoc
class _$VipCurrentPlanModelCopyWithImpl<$Res, $Val extends VipCurrentPlanModel>
    implements $VipCurrentPlanModelCopyWith<$Res> {
  _$VipCurrentPlanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSubscription = freezed,
    Object? otherSubscriptions = null,
  }) {
    return _then(_value.copyWith(
      currentSubscription: freezed == currentSubscription
          ? _value.currentSubscription
          : currentSubscription // ignore: cast_nullable_to_non_nullable
              as VipSubscribeModel?,
      otherSubscriptions: null == otherSubscriptions
          ? _value.otherSubscriptions
          : otherSubscriptions // ignore: cast_nullable_to_non_nullable
              as List<VipSubscribeModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VipSubscribeModelCopyWith<$Res>? get currentSubscription {
    if (_value.currentSubscription == null) {
      return null;
    }

    return $VipSubscribeModelCopyWith<$Res>(_value.currentSubscription!,
        (value) {
      return _then(_value.copyWith(currentSubscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VipCurrentPlanModelCopyWith<$Res>
    implements $VipCurrentPlanModelCopyWith<$Res> {
  factory _$$_VipCurrentPlanModelCopyWith(_$_VipCurrentPlanModel value,
          $Res Function(_$_VipCurrentPlanModel) then) =
      __$$_VipCurrentPlanModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_subscription")
      VipSubscribeModel? currentSubscription,
      @JsonKey(name: "other_subscriptions")
      List<VipSubscribeModel> otherSubscriptions});

  @override
  $VipSubscribeModelCopyWith<$Res>? get currentSubscription;
}

/// @nodoc
class __$$_VipCurrentPlanModelCopyWithImpl<$Res>
    extends _$VipCurrentPlanModelCopyWithImpl<$Res, _$_VipCurrentPlanModel>
    implements _$$_VipCurrentPlanModelCopyWith<$Res> {
  __$$_VipCurrentPlanModelCopyWithImpl(_$_VipCurrentPlanModel _value,
      $Res Function(_$_VipCurrentPlanModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSubscription = freezed,
    Object? otherSubscriptions = null,
  }) {
    return _then(_$_VipCurrentPlanModel(
      currentSubscription: freezed == currentSubscription
          ? _value.currentSubscription
          : currentSubscription // ignore: cast_nullable_to_non_nullable
              as VipSubscribeModel?,
      otherSubscriptions: null == otherSubscriptions
          ? _value._otherSubscriptions
          : otherSubscriptions // ignore: cast_nullable_to_non_nullable
              as List<VipSubscribeModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VipCurrentPlanModel extends _VipCurrentPlanModel {
  _$_VipCurrentPlanModel(
      {@JsonKey(name: "current_subscription") required this.currentSubscription,
      @JsonKey(name: "other_subscriptions")
      required final List<VipSubscribeModel> otherSubscriptions})
      : _otherSubscriptions = otherSubscriptions,
        super._();

  factory _$_VipCurrentPlanModel.fromJson(Map<String, dynamic> json) =>
      _$$_VipCurrentPlanModelFromJson(json);

  /// can be null if user is not subscribed in any plan
  @override
  @JsonKey(name: "current_subscription")
  final VipSubscribeModel? currentSubscription;
  final List<VipSubscribeModel> _otherSubscriptions;
  @override
  @JsonKey(name: "other_subscriptions")
  List<VipSubscribeModel> get otherSubscriptions {
    if (_otherSubscriptions is EqualUnmodifiableListView)
      return _otherSubscriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherSubscriptions);
  }

  @override
  String toString() {
    return 'VipCurrentPlanModel(currentSubscription: $currentSubscription, otherSubscriptions: $otherSubscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VipCurrentPlanModel &&
            (identical(other.currentSubscription, currentSubscription) ||
                other.currentSubscription == currentSubscription) &&
            const DeepCollectionEquality()
                .equals(other._otherSubscriptions, _otherSubscriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentSubscription,
      const DeepCollectionEquality().hash(_otherSubscriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VipCurrentPlanModelCopyWith<_$_VipCurrentPlanModel> get copyWith =>
      __$$_VipCurrentPlanModelCopyWithImpl<_$_VipCurrentPlanModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VipCurrentPlanModelToJson(
      this,
    );
  }
}

abstract class _VipCurrentPlanModel extends VipCurrentPlanModel {
  factory _VipCurrentPlanModel(
          {@JsonKey(name: "current_subscription")
          required final VipSubscribeModel? currentSubscription,
          @JsonKey(name: "other_subscriptions")
          required final List<VipSubscribeModel> otherSubscriptions}) =
      _$_VipCurrentPlanModel;
  _VipCurrentPlanModel._() : super._();

  factory _VipCurrentPlanModel.fromJson(Map<String, dynamic> json) =
      _$_VipCurrentPlanModel.fromJson;

  @override

  /// can be null if user is not subscribed in any plan
  @JsonKey(name: "current_subscription")
  VipSubscribeModel? get currentSubscription;
  @override
  @JsonKey(name: "other_subscriptions")
  List<VipSubscribeModel> get otherSubscriptions;
  @override
  @JsonKey(ignore: true)
  _$$_VipCurrentPlanModelCopyWith<_$_VipCurrentPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}
