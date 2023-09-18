// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CusProductModel _$CusProductModelFromJson(Map<String, dynamic> json) {
  return _CusProductModel.fromJson(json);
}

/// @nodoc
mixin _$CusProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  CusProductsCatModel? get category => throw _privateConstructorUsedError;
  CusProductsBrandModel? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_status')
  bool get availableStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_status')
  String get adminStatus => throw _privateConstructorUsedError;
  String get conditon => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos_value')
  String get photosValue => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_img')
  String get thumbnailImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_img_value')
  String get thumbnailImgValue => throw _privateConstructorUsedError;
  String get pdf => throw _privateConstructorUsedError;
  @JsonKey(name: 'pdf_value')
  String get pdfValue => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_provider')
  String get videoProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_link')
  String get videoLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_title')
  String get metaTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_description')
  String get metaDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_img')
  String get metaImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_img_value')
  String get metaImgValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CusProductModelCopyWith<CusProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusProductModelCopyWith<$Res> {
  factory $CusProductModelCopyWith(
          CusProductModel value, $Res Function(CusProductModel) then) =
      _$CusProductModelCopyWithImpl<$Res, CusProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String unit,
      String description,
      String slug,
      CusProductsCatModel? category,
      CusProductsBrandModel? brand,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'available_status') bool availableStatus,
      @JsonKey(name: 'admin_status') String adminStatus,
      String conditon,
      String location,
      @JsonKey(name: 'photos_value') String photosValue,
      List<String> photos,
      @JsonKey(name: 'thumbnail_img') String thumbnailImg,
      @JsonKey(name: 'thumbnail_img_value') String thumbnailImgValue,
      String pdf,
      @JsonKey(name: 'pdf_value') String pdfValue,
      List<String> tags,
      @JsonKey(name: 'video_provider') String videoProvider,
      @JsonKey(name: 'video_link') String videoLink,
      @JsonKey(name: 'meta_title') String metaTitle,
      @JsonKey(name: 'meta_description') String metaDescription,
      @JsonKey(name: 'meta_img') String metaImg,
      @JsonKey(name: 'meta_img_value') String metaImgValue});

  $CusProductsCatModelCopyWith<$Res>? get category;
  $CusProductsBrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$CusProductModelCopyWithImpl<$Res, $Val extends CusProductModel>
    implements $CusProductModelCopyWith<$Res> {
  _$CusProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = null,
    Object? description = null,
    Object? slug = null,
    Object? category = freezed,
    Object? brand = freezed,
    Object? unitPrice = null,
    Object? availableStatus = null,
    Object? adminStatus = null,
    Object? conditon = null,
    Object? location = null,
    Object? photosValue = null,
    Object? photos = null,
    Object? thumbnailImg = null,
    Object? thumbnailImgValue = null,
    Object? pdf = null,
    Object? pdfValue = null,
    Object? tags = null,
    Object? videoProvider = null,
    Object? videoLink = null,
    Object? metaTitle = null,
    Object? metaDescription = null,
    Object? metaImg = null,
    Object? metaImgValue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CusProductsCatModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CusProductsBrandModel?,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      availableStatus: null == availableStatus
          ? _value.availableStatus
          : availableStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      adminStatus: null == adminStatus
          ? _value.adminStatus
          : adminStatus // ignore: cast_nullable_to_non_nullable
              as String,
      conditon: null == conditon
          ? _value.conditon
          : conditon // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      photosValue: null == photosValue
          ? _value.photosValue
          : photosValue // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnailImg: null == thumbnailImg
          ? _value.thumbnailImg
          : thumbnailImg // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImgValue: null == thumbnailImgValue
          ? _value.thumbnailImgValue
          : thumbnailImgValue // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      pdfValue: null == pdfValue
          ? _value.pdfValue
          : pdfValue // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoProvider: null == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: null == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      metaTitle: null == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      metaDescription: null == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      metaImg: null == metaImg
          ? _value.metaImg
          : metaImg // ignore: cast_nullable_to_non_nullable
              as String,
      metaImgValue: null == metaImgValue
          ? _value.metaImgValue
          : metaImgValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CusProductsCatModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CusProductsCatModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CusProductsBrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $CusProductsBrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CusProductModelCopyWith<$Res>
    implements $CusProductModelCopyWith<$Res> {
  factory _$$_CusProductModelCopyWith(
          _$_CusProductModel value, $Res Function(_$_CusProductModel) then) =
      __$$_CusProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String unit,
      String description,
      String slug,
      CusProductsCatModel? category,
      CusProductsBrandModel? brand,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'available_status') bool availableStatus,
      @JsonKey(name: 'admin_status') String adminStatus,
      String conditon,
      String location,
      @JsonKey(name: 'photos_value') String photosValue,
      List<String> photos,
      @JsonKey(name: 'thumbnail_img') String thumbnailImg,
      @JsonKey(name: 'thumbnail_img_value') String thumbnailImgValue,
      String pdf,
      @JsonKey(name: 'pdf_value') String pdfValue,
      List<String> tags,
      @JsonKey(name: 'video_provider') String videoProvider,
      @JsonKey(name: 'video_link') String videoLink,
      @JsonKey(name: 'meta_title') String metaTitle,
      @JsonKey(name: 'meta_description') String metaDescription,
      @JsonKey(name: 'meta_img') String metaImg,
      @JsonKey(name: 'meta_img_value') String metaImgValue});

  @override
  $CusProductsCatModelCopyWith<$Res>? get category;
  @override
  $CusProductsBrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$_CusProductModelCopyWithImpl<$Res>
    extends _$CusProductModelCopyWithImpl<$Res, _$_CusProductModel>
    implements _$$_CusProductModelCopyWith<$Res> {
  __$$_CusProductModelCopyWithImpl(
      _$_CusProductModel _value, $Res Function(_$_CusProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = null,
    Object? description = null,
    Object? slug = null,
    Object? category = freezed,
    Object? brand = freezed,
    Object? unitPrice = null,
    Object? availableStatus = null,
    Object? adminStatus = null,
    Object? conditon = null,
    Object? location = null,
    Object? photosValue = null,
    Object? photos = null,
    Object? thumbnailImg = null,
    Object? thumbnailImgValue = null,
    Object? pdf = null,
    Object? pdfValue = null,
    Object? tags = null,
    Object? videoProvider = null,
    Object? videoLink = null,
    Object? metaTitle = null,
    Object? metaDescription = null,
    Object? metaImg = null,
    Object? metaImgValue = null,
  }) {
    return _then(_$_CusProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CusProductsCatModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CusProductsBrandModel?,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      availableStatus: null == availableStatus
          ? _value.availableStatus
          : availableStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      adminStatus: null == adminStatus
          ? _value.adminStatus
          : adminStatus // ignore: cast_nullable_to_non_nullable
              as String,
      conditon: null == conditon
          ? _value.conditon
          : conditon // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      photosValue: null == photosValue
          ? _value.photosValue
          : photosValue // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnailImg: null == thumbnailImg
          ? _value.thumbnailImg
          : thumbnailImg // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImgValue: null == thumbnailImgValue
          ? _value.thumbnailImgValue
          : thumbnailImgValue // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      pdfValue: null == pdfValue
          ? _value.pdfValue
          : pdfValue // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoProvider: null == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String,
      videoLink: null == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      metaTitle: null == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      metaDescription: null == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      metaImg: null == metaImg
          ? _value.metaImg
          : metaImg // ignore: cast_nullable_to_non_nullable
              as String,
      metaImgValue: null == metaImgValue
          ? _value.metaImgValue
          : metaImgValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CusProductModel extends _CusProductModel {
  const _$_CusProductModel(
      {required this.id,
      required this.name,
      required this.unit,
      required this.description,
      required this.slug,
      this.category,
      this.brand,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      @JsonKey(name: 'available_status') required this.availableStatus,
      @JsonKey(name: 'admin_status') required this.adminStatus,
      required this.conditon,
      required this.location,
      @JsonKey(name: 'photos_value') required this.photosValue,
      required final List<String> photos,
      @JsonKey(name: 'thumbnail_img') required this.thumbnailImg,
      @JsonKey(name: 'thumbnail_img_value') required this.thumbnailImgValue,
      required this.pdf,
      @JsonKey(name: 'pdf_value') required this.pdfValue,
      required final List<String> tags,
      @JsonKey(name: 'video_provider') required this.videoProvider,
      @JsonKey(name: 'video_link') required this.videoLink,
      @JsonKey(name: 'meta_title') required this.metaTitle,
      @JsonKey(name: 'meta_description') required this.metaDescription,
      @JsonKey(name: 'meta_img') required this.metaImg,
      @JsonKey(name: 'meta_img_value') required this.metaImgValue})
      : _photos = photos,
        _tags = tags,
        super._();

  factory _$_CusProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_CusProductModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String unit;
  @override
  final String description;
  @override
  final String slug;
  @override
  final CusProductsCatModel? category;
  @override
  final CusProductsBrandModel? brand;
  @override
  @JsonKey(name: 'unit_price')
  final String unitPrice;
  @override
  @JsonKey(name: 'available_status')
  final bool availableStatus;
  @override
  @JsonKey(name: 'admin_status')
  final String adminStatus;
  @override
  final String conditon;
  @override
  final String location;
  @override
  @JsonKey(name: 'photos_value')
  final String photosValue;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey(name: 'thumbnail_img')
  final String thumbnailImg;
  @override
  @JsonKey(name: 'thumbnail_img_value')
  final String thumbnailImgValue;
  @override
  final String pdf;
  @override
  @JsonKey(name: 'pdf_value')
  final String pdfValue;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'video_provider')
  final String videoProvider;
  @override
  @JsonKey(name: 'video_link')
  final String videoLink;
  @override
  @JsonKey(name: 'meta_title')
  final String metaTitle;
  @override
  @JsonKey(name: 'meta_description')
  final String metaDescription;
  @override
  @JsonKey(name: 'meta_img')
  final String metaImg;
  @override
  @JsonKey(name: 'meta_img_value')
  final String metaImgValue;

  @override
  String toString() {
    return 'CusProductModel(id: $id, name: $name, unit: $unit, description: $description, slug: $slug, category: $category, brand: $brand, unitPrice: $unitPrice, availableStatus: $availableStatus, adminStatus: $adminStatus, conditon: $conditon, location: $location, photosValue: $photosValue, photos: $photos, thumbnailImg: $thumbnailImg, thumbnailImgValue: $thumbnailImgValue, pdf: $pdf, pdfValue: $pdfValue, tags: $tags, videoProvider: $videoProvider, videoLink: $videoLink, metaTitle: $metaTitle, metaDescription: $metaDescription, metaImg: $metaImg, metaImgValue: $metaImgValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CusProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.availableStatus, availableStatus) ||
                other.availableStatus == availableStatus) &&
            (identical(other.adminStatus, adminStatus) ||
                other.adminStatus == adminStatus) &&
            (identical(other.conditon, conditon) ||
                other.conditon == conditon) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.photosValue, photosValue) ||
                other.photosValue == photosValue) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.thumbnailImg, thumbnailImg) ||
                other.thumbnailImg == thumbnailImg) &&
            (identical(other.thumbnailImgValue, thumbnailImgValue) ||
                other.thumbnailImgValue == thumbnailImgValue) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.pdfValue, pdfValue) ||
                other.pdfValue == pdfValue) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.videoProvider, videoProvider) ||
                other.videoProvider == videoProvider) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.metaImg, metaImg) || other.metaImg == metaImg) &&
            (identical(other.metaImgValue, metaImgValue) ||
                other.metaImgValue == metaImgValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        unit,
        description,
        slug,
        category,
        brand,
        unitPrice,
        availableStatus,
        adminStatus,
        conditon,
        location,
        photosValue,
        const DeepCollectionEquality().hash(_photos),
        thumbnailImg,
        thumbnailImgValue,
        pdf,
        pdfValue,
        const DeepCollectionEquality().hash(_tags),
        videoProvider,
        videoLink,
        metaTitle,
        metaDescription,
        metaImg,
        metaImgValue
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CusProductModelCopyWith<_$_CusProductModel> get copyWith =>
      __$$_CusProductModelCopyWithImpl<_$_CusProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CusProductModelToJson(
      this,
    );
  }
}

abstract class _CusProductModel extends CusProductModel {
  const factory _CusProductModel(
      {required final int id,
      required final String name,
      required final String unit,
      required final String description,
      required final String slug,
      final CusProductsCatModel? category,
      final CusProductsBrandModel? brand,
      @JsonKey(name: 'unit_price') required final String unitPrice,
      @JsonKey(name: 'available_status') required final bool availableStatus,
      @JsonKey(name: 'admin_status') required final String adminStatus,
      required final String conditon,
      required final String location,
      @JsonKey(name: 'photos_value') required final String photosValue,
      required final List<String> photos,
      @JsonKey(name: 'thumbnail_img') required final String thumbnailImg,
      @JsonKey(name: 'thumbnail_img_value')
      required final String thumbnailImgValue,
      required final String pdf,
      @JsonKey(name: 'pdf_value') required final String pdfValue,
      required final List<String> tags,
      @JsonKey(name: 'video_provider') required final String videoProvider,
      @JsonKey(name: 'video_link') required final String videoLink,
      @JsonKey(name: 'meta_title') required final String metaTitle,
      @JsonKey(name: 'meta_description') required final String metaDescription,
      @JsonKey(name: 'meta_img') required final String metaImg,
      @JsonKey(name: 'meta_img_value')
      required final String metaImgValue}) = _$_CusProductModel;
  const _CusProductModel._() : super._();

  factory _CusProductModel.fromJson(Map<String, dynamic> json) =
      _$_CusProductModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get unit;
  @override
  String get description;
  @override
  String get slug;
  @override
  CusProductsCatModel? get category;
  @override
  CusProductsBrandModel? get brand;
  @override
  @JsonKey(name: 'unit_price')
  String get unitPrice;
  @override
  @JsonKey(name: 'available_status')
  bool get availableStatus;
  @override
  @JsonKey(name: 'admin_status')
  String get adminStatus;
  @override
  String get conditon;
  @override
  String get location;
  @override
  @JsonKey(name: 'photos_value')
  String get photosValue;
  @override
  List<String> get photos;
  @override
  @JsonKey(name: 'thumbnail_img')
  String get thumbnailImg;
  @override
  @JsonKey(name: 'thumbnail_img_value')
  String get thumbnailImgValue;
  @override
  String get pdf;
  @override
  @JsonKey(name: 'pdf_value')
  String get pdfValue;
  @override
  List<String> get tags;
  @override
  @JsonKey(name: 'video_provider')
  String get videoProvider;
  @override
  @JsonKey(name: 'video_link')
  String get videoLink;
  @override
  @JsonKey(name: 'meta_title')
  String get metaTitle;
  @override
  @JsonKey(name: 'meta_description')
  String get metaDescription;
  @override
  @JsonKey(name: 'meta_img')
  String get metaImg;
  @override
  @JsonKey(name: 'meta_img_value')
  String get metaImgValue;
  @override
  @JsonKey(ignore: true)
  _$$_CusProductModelCopyWith<_$_CusProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
