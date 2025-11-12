// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryInstruction _$DeliveryInstructionFromJson(Map<String, dynamic> json) {
  return _DeliveryInstruction.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInstruction {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInstructionCopyWith<DeliveryInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInstructionCopyWith<$Res> {
  factory $DeliveryInstructionCopyWith(
          DeliveryInstruction value, $Res Function(DeliveryInstruction) then) =
      _$DeliveryInstructionCopyWithImpl<$Res, DeliveryInstruction>;
  @useResult
  $Res call({String name, String image, int id});
}

/// @nodoc
class _$DeliveryInstructionCopyWithImpl<$Res, $Val extends DeliveryInstruction>
    implements $DeliveryInstructionCopyWith<$Res> {
  _$DeliveryInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryInstructionCopyWith<$Res>
    implements $DeliveryInstructionCopyWith<$Res> {
  factory _$$_DeliveryInstructionCopyWith(_$_DeliveryInstruction value,
          $Res Function(_$_DeliveryInstruction) then) =
      __$$_DeliveryInstructionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, int id});
}

/// @nodoc
class __$$_DeliveryInstructionCopyWithImpl<$Res>
    extends _$DeliveryInstructionCopyWithImpl<$Res, _$_DeliveryInstruction>
    implements _$$_DeliveryInstructionCopyWith<$Res> {
  __$$_DeliveryInstructionCopyWithImpl(_$_DeliveryInstruction _value,
      $Res Function(_$_DeliveryInstruction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_$_DeliveryInstruction(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DeliveryInstruction extends _DeliveryInstruction {
  _$_DeliveryInstruction(
      {required this.name, required this.image, required this.id})
      : super._();

  factory _$_DeliveryInstruction.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryInstructionFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final int id;

  @override
  String toString() {
    return 'DeliveryInstruction(name: $name, image: $image, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryInstruction &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryInstructionCopyWith<_$_DeliveryInstruction> get copyWith =>
      __$$_DeliveryInstructionCopyWithImpl<_$_DeliveryInstruction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryInstructionToJson(
      this,
    );
  }
}

abstract class _DeliveryInstruction extends DeliveryInstruction {
  factory _DeliveryInstruction(
      {required final String name,
      required final String image,
      required final int id}) = _$_DeliveryInstruction;
  _DeliveryInstruction._() : super._();

  factory _DeliveryInstruction.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInstruction.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryInstructionCopyWith<_$_DeliveryInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}
