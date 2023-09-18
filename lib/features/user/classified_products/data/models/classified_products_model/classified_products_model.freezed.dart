// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classified_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassifiedProductsModel _$ClassifiedProductsModelFromJson(
    Map<String, dynamic> json) {
  return _ClassifiedProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ClassifiedProductsModel {
  @JsonKey(name: 'remaining_uploads')
  int get remainingUploads => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_package')
  CurrentPackageModel? get currentPackage => throw _privateConstructorUsedError;
  @JsonKey(name: 'section_products')
  SectionProductsModel get sectionsProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassifiedProductsModelCopyWith<ClassifiedProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassifiedProductsModelCopyWith<$Res> {
  factory $ClassifiedProductsModelCopyWith(ClassifiedProductsModel value,
          $Res Function(ClassifiedProductsModel) then) =
      _$ClassifiedProductsModelCopyWithImpl<$Res, ClassifiedProductsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'remaining_uploads') int remainingUploads,
      @JsonKey(name: 'current_package') CurrentPackageModel? currentPackage,
      @JsonKey(name: 'section_products')
      SectionProductsModel sectionsProducts});

  $CurrentPackageModelCopyWith<$Res>? get currentPackage;
  $SectionProductsModelCopyWith<$Res> get sectionsProducts;
}

/// @nodoc
class _$ClassifiedProductsModelCopyWithImpl<$Res,
        $Val extends ClassifiedProductsModel>
    implements $ClassifiedProductsModelCopyWith<$Res> {
  _$ClassifiedProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingUploads = null,
    Object? currentPackage = freezed,
    Object? sectionsProducts = null,
  }) {
    return _then(_value.copyWith(
      remainingUploads: null == remainingUploads
          ? _value.remainingUploads
          : remainingUploads // ignore: cast_nullable_to_non_nullable
              as int,
      currentPackage: freezed == currentPackage
          ? _value.currentPackage
          : currentPackage // ignore: cast_nullable_to_non_nullable
              as CurrentPackageModel?,
      sectionsProducts: null == sectionsProducts
          ? _value.sectionsProducts
          : sectionsProducts // ignore: cast_nullable_to_non_nullable
              as SectionProductsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentPackageModelCopyWith<$Res>? get currentPackage {
    if (_value.currentPackage == null) {
      return null;
    }

    return $CurrentPackageModelCopyWith<$Res>(_value.currentPackage!, (value) {
      return _then(_value.copyWith(currentPackage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionProductsModelCopyWith<$Res> get sectionsProducts {
    return $SectionProductsModelCopyWith<$Res>(_value.sectionsProducts,
        (value) {
      return _then(_value.copyWith(sectionsProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClassifiedProductsModelCopyWith<$Res>
    implements $ClassifiedProductsModelCopyWith<$Res> {
  factory _$$_ClassifiedProductsModelCopyWith(_$_ClassifiedProductsModel value,
          $Res Function(_$_ClassifiedProductsModel) then) =
      __$$_ClassifiedProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'remaining_uploads') int remainingUploads,
      @JsonKey(name: 'current_package') CurrentPackageModel? currentPackage,
      @JsonKey(name: 'section_products')
      SectionProductsModel sectionsProducts});

  @override
  $CurrentPackageModelCopyWith<$Res>? get currentPackage;
  @override
  $SectionProductsModelCopyWith<$Res> get sectionsProducts;
}

/// @nodoc
class __$$_ClassifiedProductsModelCopyWithImpl<$Res>
    extends _$ClassifiedProductsModelCopyWithImpl<$Res,
        _$_ClassifiedProductsModel>
    implements _$$_ClassifiedProductsModelCopyWith<$Res> {
  __$$_ClassifiedProductsModelCopyWithImpl(_$_ClassifiedProductsModel _value,
      $Res Function(_$_ClassifiedProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingUploads = null,
    Object? currentPackage = freezed,
    Object? sectionsProducts = null,
  }) {
    return _then(_$_ClassifiedProductsModel(
      remainingUploads: null == remainingUploads
          ? _value.remainingUploads
          : remainingUploads // ignore: cast_nullable_to_non_nullable
              as int,
      currentPackage: freezed == currentPackage
          ? _value.currentPackage
          : currentPackage // ignore: cast_nullable_to_non_nullable
              as CurrentPackageModel?,
      sectionsProducts: null == sectionsProducts
          ? _value.sectionsProducts
          : sectionsProducts // ignore: cast_nullable_to_non_nullable
              as SectionProductsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ClassifiedProductsModel extends _ClassifiedProductsModel {
  const _$_ClassifiedProductsModel(
      {@JsonKey(name: 'remaining_uploads') required this.remainingUploads,
      @JsonKey(name: 'current_package') this.currentPackage,
      @JsonKey(name: 'section_products') required this.sectionsProducts})
      : super._();

  factory _$_ClassifiedProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClassifiedProductsModelFromJson(json);

  @override
  @JsonKey(name: 'remaining_uploads')
  final int remainingUploads;
  @override
  @JsonKey(name: 'current_package')
  final CurrentPackageModel? currentPackage;
  @override
  @JsonKey(name: 'section_products')
  final SectionProductsModel sectionsProducts;

  @override
  String toString() {
    return 'ClassifiedProductsModel(remainingUploads: $remainingUploads, currentPackage: $currentPackage, sectionsProducts: $sectionsProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassifiedProductsModel &&
            (identical(other.remainingUploads, remainingUploads) ||
                other.remainingUploads == remainingUploads) &&
            (identical(other.currentPackage, currentPackage) ||
                other.currentPackage == currentPackage) &&
            (identical(other.sectionsProducts, sectionsProducts) ||
                other.sectionsProducts == sectionsProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, remainingUploads, currentPackage, sectionsProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassifiedProductsModelCopyWith<_$_ClassifiedProductsModel>
      get copyWith =>
          __$$_ClassifiedProductsModelCopyWithImpl<_$_ClassifiedProductsModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassifiedProductsModelToJson(
      this,
    );
  }
}

abstract class _ClassifiedProductsModel extends ClassifiedProductsModel {
  const factory _ClassifiedProductsModel(
      {@JsonKey(name: 'remaining_uploads') required final int remainingUploads,
      @JsonKey(name: 'current_package')
      final CurrentPackageModel? currentPackage,
      @JsonKey(name: 'section_products')
      required final SectionProductsModel
          sectionsProducts}) = _$_ClassifiedProductsModel;
  const _ClassifiedProductsModel._() : super._();

  factory _ClassifiedProductsModel.fromJson(Map<String, dynamic> json) =
      _$_ClassifiedProductsModel.fromJson;

  @override
  @JsonKey(name: 'remaining_uploads')
  int get remainingUploads;
  @override
  @JsonKey(name: 'current_package')
  CurrentPackageModel? get currentPackage;
  @override
  @JsonKey(name: 'section_products')
  SectionProductsModel get sectionsProducts;
  @override
  @JsonKey(ignore: true)
  _$$_ClassifiedProductsModelCopyWith<_$_ClassifiedProductsModel>
      get copyWith => throw _privateConstructorUsedError;
}
