// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerProductModel _$CustomerProductModelFromJson(Map<String, dynamic> json) {
  return _CustomerProductModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerProductModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "conditon")
  String get condition => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: "photos_value")
  String get photosValue => throw _privateConstructorUsedError;
  @JsonKey(name: "photos")
  List<String> get photos => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_img")
  String get thumbnailImg => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_img_value")
  String get thumbnailImgValue => throw _privateConstructorUsedError;
  @JsonKey(name: "pdf")
  String get pdf => throw _privateConstructorUsedError;
  @JsonKey(name: "pdf_value")
  String get pdfValue => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "video_provider")
  String get videoProvider => throw _privateConstructorUsedError;
  @JsonKey(name: "video_link")
  String get videoLink => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_title")
  String get metaTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_description")
  String get metaDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_img")
  String get metaImg => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_img_value")
  String get metaImgValue => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  UserModel? get userData => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "available_status")
  bool? get availableStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "admin_status")
  String? get adminStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  BrandModel? get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerProductModelCopyWith<CustomerProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProductModelCopyWith<$Res> {
  factory $CustomerProductModelCopyWith(CustomerProductModel value,
          $Res Function(CustomerProductModel) then) =
      _$CustomerProductModelCopyWithImpl<$Res, CustomerProductModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "unit_price") String unitPrice,
      @JsonKey(name: "conditon") String condition,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "photos_value") String photosValue,
      @JsonKey(name: "photos") List<String> photos,
      @JsonKey(name: "thumbnail_img") String thumbnailImg,
      @JsonKey(name: "thumbnail_img_value") String thumbnailImgValue,
      @JsonKey(name: "pdf") String pdf,
      @JsonKey(name: "pdf_value") String pdfValue,
      @JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "video_provider") String videoProvider,
      @JsonKey(name: "video_link") String videoLink,
      @JsonKey(name: "meta_title") String metaTitle,
      @JsonKey(name: "meta_description") String metaDescription,
      @JsonKey(name: "meta_img") String metaImg,
      @JsonKey(name: "meta_img_value") String metaImgValue,
      @JsonKey(name: "user") UserModel? userData,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "available_status") bool? availableStatus,
      @JsonKey(name: "admin_status") String? adminStatus,
      @JsonKey(name: "category") CategoryModel? category,
      @JsonKey(name: "brand") BrandModel? brand});

  $UserModelCopyWith<$Res>? get userData;
  $CategoryModelCopyWith<$Res>? get category;
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$CustomerProductModelCopyWithImpl<$Res,
        $Val extends CustomerProductModel>
    implements $CustomerProductModelCopyWith<$Res> {
  _$CustomerProductModelCopyWithImpl(this._value, this._then);

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
    Object? unitPrice = null,
    Object? condition = null,
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
    Object? userData = freezed,
    Object? slug = freezed,
    Object? availableStatus = freezed,
    Object? adminStatus = freezed,
    Object? category = freezed,
    Object? brand = freezed,
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
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
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
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      availableStatus: freezed == availableStatus
          ? _value.availableStatus
          : availableStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      adminStatus: freezed == adminStatus
          ? _value.adminStatus
          : adminStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerProductModelCopyWith<$Res>
    implements $CustomerProductModelCopyWith<$Res> {
  factory _$$_CustomerProductModelCopyWith(_$_CustomerProductModel value,
          $Res Function(_$_CustomerProductModel) then) =
      __$$_CustomerProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "unit_price") String unitPrice,
      @JsonKey(name: "conditon") String condition,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "photos_value") String photosValue,
      @JsonKey(name: "photos") List<String> photos,
      @JsonKey(name: "thumbnail_img") String thumbnailImg,
      @JsonKey(name: "thumbnail_img_value") String thumbnailImgValue,
      @JsonKey(name: "pdf") String pdf,
      @JsonKey(name: "pdf_value") String pdfValue,
      @JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "video_provider") String videoProvider,
      @JsonKey(name: "video_link") String videoLink,
      @JsonKey(name: "meta_title") String metaTitle,
      @JsonKey(name: "meta_description") String metaDescription,
      @JsonKey(name: "meta_img") String metaImg,
      @JsonKey(name: "meta_img_value") String metaImgValue,
      @JsonKey(name: "user") UserModel? userData,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "available_status") bool? availableStatus,
      @JsonKey(name: "admin_status") String? adminStatus,
      @JsonKey(name: "category") CategoryModel? category,
      @JsonKey(name: "brand") BrandModel? brand});

  @override
  $UserModelCopyWith<$Res>? get userData;
  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$_CustomerProductModelCopyWithImpl<$Res>
    extends _$CustomerProductModelCopyWithImpl<$Res, _$_CustomerProductModel>
    implements _$$_CustomerProductModelCopyWith<$Res> {
  __$$_CustomerProductModelCopyWithImpl(_$_CustomerProductModel _value,
      $Res Function(_$_CustomerProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = null,
    Object? description = null,
    Object? unitPrice = null,
    Object? condition = null,
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
    Object? userData = freezed,
    Object? slug = freezed,
    Object? availableStatus = freezed,
    Object? adminStatus = freezed,
    Object? category = freezed,
    Object? brand = freezed,
  }) {
    return _then(_$_CustomerProductModel(
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
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
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
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      availableStatus: freezed == availableStatus
          ? _value.availableStatus
          : availableStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      adminStatus: freezed == adminStatus
          ? _value.adminStatus
          : adminStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CustomerProductModel extends _CustomerProductModel {
  const _$_CustomerProductModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "unit") required this.unit,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "unit_price") required this.unitPrice,
      @JsonKey(name: "conditon") required this.condition,
      @JsonKey(name: "location") required this.location,
      @JsonKey(name: "photos_value") required this.photosValue,
      @JsonKey(name: "photos") required final List<String> photos,
      @JsonKey(name: "thumbnail_img") required this.thumbnailImg,
      @JsonKey(name: "thumbnail_img_value") required this.thumbnailImgValue,
      @JsonKey(name: "pdf") required this.pdf,
      @JsonKey(name: "pdf_value") required this.pdfValue,
      @JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "video_provider") required this.videoProvider,
      @JsonKey(name: "video_link") required this.videoLink,
      @JsonKey(name: "meta_title") required this.metaTitle,
      @JsonKey(name: "meta_description") required this.metaDescription,
      @JsonKey(name: "meta_img") required this.metaImg,
      @JsonKey(name: "meta_img_value") required this.metaImgValue,
      @JsonKey(name: "user") this.userData,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "available_status") this.availableStatus,
      @JsonKey(name: "admin_status") this.adminStatus,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "brand") this.brand})
      : _photos = photos,
        _tags = tags,
        super._();

  factory _$_CustomerProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerProductModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "unit")
  final String unit;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "unit_price")
  final String unitPrice;
  @override
  @JsonKey(name: "conditon")
  final String condition;
  @override
  @JsonKey(name: "location")
  final String location;
  @override
  @JsonKey(name: "photos_value")
  final String photosValue;
  final List<String> _photos;
  @override
  @JsonKey(name: "photos")
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey(name: "thumbnail_img")
  final String thumbnailImg;
  @override
  @JsonKey(name: "thumbnail_img_value")
  final String thumbnailImgValue;
  @override
  @JsonKey(name: "pdf")
  final String pdf;
  @override
  @JsonKey(name: "pdf_value")
  final String pdfValue;
  final List<String> _tags;
  @override
  @JsonKey(name: "tags")
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: "video_provider")
  final String videoProvider;
  @override
  @JsonKey(name: "video_link")
  final String videoLink;
  @override
  @JsonKey(name: "meta_title")
  final String metaTitle;
  @override
  @JsonKey(name: "meta_description")
  final String metaDescription;
  @override
  @JsonKey(name: "meta_img")
  final String metaImg;
  @override
  @JsonKey(name: "meta_img_value")
  final String metaImgValue;
  @override
  @JsonKey(name: "user")
  final UserModel? userData;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "available_status")
  final bool? availableStatus;
  @override
  @JsonKey(name: "admin_status")
  final String? adminStatus;
  @override
  @JsonKey(name: "category")
  final CategoryModel? category;
  @override
  @JsonKey(name: "brand")
  final BrandModel? brand;

  @override
  String toString() {
    return 'CustomerProductModel(id: $id, name: $name, unit: $unit, description: $description, unitPrice: $unitPrice, condition: $condition, location: $location, photosValue: $photosValue, photos: $photos, thumbnailImg: $thumbnailImg, thumbnailImgValue: $thumbnailImgValue, pdf: $pdf, pdfValue: $pdfValue, tags: $tags, videoProvider: $videoProvider, videoLink: $videoLink, metaTitle: $metaTitle, metaDescription: $metaDescription, metaImg: $metaImg, metaImgValue: $metaImgValue, userData: $userData, slug: $slug, availableStatus: $availableStatus, adminStatus: $adminStatus, category: $category, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
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
                other.metaImgValue == metaImgValue) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.availableStatus, availableStatus) ||
                other.availableStatus == availableStatus) &&
            (identical(other.adminStatus, adminStatus) ||
                other.adminStatus == adminStatus) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        unit,
        description,
        unitPrice,
        condition,
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
        metaImgValue,
        userData,
        slug,
        availableStatus,
        adminStatus,
        category,
        brand
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerProductModelCopyWith<_$_CustomerProductModel> get copyWith =>
      __$$_CustomerProductModelCopyWithImpl<_$_CustomerProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerProductModelToJson(
      this,
    );
  }
}

abstract class _CustomerProductModel extends CustomerProductModel {
  const factory _CustomerProductModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "unit") required final String unit,
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "unit_price") required final String unitPrice,
      @JsonKey(name: "conditon") required final String condition,
      @JsonKey(name: "location") required final String location,
      @JsonKey(name: "photos_value") required final String photosValue,
      @JsonKey(name: "photos") required final List<String> photos,
      @JsonKey(name: "thumbnail_img") required final String thumbnailImg,
      @JsonKey(name: "thumbnail_img_value")
      required final String thumbnailImgValue,
      @JsonKey(name: "pdf") required final String pdf,
      @JsonKey(name: "pdf_value") required final String pdfValue,
      @JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "video_provider") required final String videoProvider,
      @JsonKey(name: "video_link") required final String videoLink,
      @JsonKey(name: "meta_title") required final String metaTitle,
      @JsonKey(name: "meta_description") required final String metaDescription,
      @JsonKey(name: "meta_img") required final String metaImg,
      @JsonKey(name: "meta_img_value") required final String metaImgValue,
      @JsonKey(name: "user") final UserModel? userData,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "available_status") final bool? availableStatus,
      @JsonKey(name: "admin_status") final String? adminStatus,
      @JsonKey(name: "category") final CategoryModel? category,
      @JsonKey(name: "brand")
      final BrandModel? brand}) = _$_CustomerProductModel;
  const _CustomerProductModel._() : super._();

  factory _CustomerProductModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerProductModel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "unit")
  String get unit;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "unit_price")
  String get unitPrice;
  @override
  @JsonKey(name: "conditon")
  String get condition;
  @override
  @JsonKey(name: "location")
  String get location;
  @override
  @JsonKey(name: "photos_value")
  String get photosValue;
  @override
  @JsonKey(name: "photos")
  List<String> get photos;
  @override
  @JsonKey(name: "thumbnail_img")
  String get thumbnailImg;
  @override
  @JsonKey(name: "thumbnail_img_value")
  String get thumbnailImgValue;
  @override
  @JsonKey(name: "pdf")
  String get pdf;
  @override
  @JsonKey(name: "pdf_value")
  String get pdfValue;
  @override
  @JsonKey(name: "tags")
  List<String> get tags;
  @override
  @JsonKey(name: "video_provider")
  String get videoProvider;
  @override
  @JsonKey(name: "video_link")
  String get videoLink;
  @override
  @JsonKey(name: "meta_title")
  String get metaTitle;
  @override
  @JsonKey(name: "meta_description")
  String get metaDescription;
  @override
  @JsonKey(name: "meta_img")
  String get metaImg;
  @override
  @JsonKey(name: "meta_img_value")
  String get metaImgValue;
  @override
  @JsonKey(name: "user")
  UserModel? get userData;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "available_status")
  bool? get availableStatus;
  @override
  @JsonKey(name: "admin_status")
  String? get adminStatus;
  @override
  @JsonKey(name: "category")
  CategoryModel? get category;
  @override
  @JsonKey(name: "brand")
  BrandModel? get brand;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerProductModelCopyWith<_$_CustomerProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
