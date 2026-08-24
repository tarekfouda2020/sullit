// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/color_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_attributes_options.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/variant.dart';
import 'package:flutter_tdd/features/user/products/domain/models/normal_product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/pharmacy_product.dart';

import '../../data/models/product_options/product_options.dart';

abstract class Product extends BaseDomainModel {
  int? id;
  int? loyaltyPoints;
  String? name;
  String? type;
  String? unit;
  String? thumbnailImage;
  List<String>? images;
  bool? isMultiple;
  String? priceHighLowDiscount;
  String? priceHighLow;
  bool? hasDiscount;
  bool? isFresh;
  bool? hasSpecialLoyaltyPoints;
  String? discount;
  String? strokedPrice;
  String? mainPrice;
  List<ProductAttributesOptions>? choiceOptions;
  List<ColorDomainModel>? colors;
  int? minQty;
  String? currencySymbol;
  Variant? variant;
  List<Variant>? variants;
  List<String>? tags;
  num? rating;
  int? sales;
  bool? isDigital;
  bool? isWishlist;
  int? sellerId;
  int? countReviews;
  String? soldByType;
  String? soldByName;
  ShopCardDomainModel? shop;
  List<Reviews>? reviews;
  bool? isResale;
  int? resellerId;
  Category? category;
  BrandDomainModel? brand;
  String? description;
  String? videoProvider;
  String? videoLink;
  String? categoryName;
  String? brandName;
  bool? isAddedTCompare;
  bool? hasVipOffer;
  bool? showProductCounter;
  bool? hasShareholderDiscount;
  bool? prescriptionRequired;
  bool? insuranceEligible;
  int? addedQtyToCart;
  int? maxQnt;
  List<ProductOptionModel>? productOptions;

  Product({this.id,
    this.name,
    this.images,
    this.type,
    this.thumbnailImage,
    this.isMultiple,
    this.prescriptionRequired,
    this.insuranceEligible,
    this.priceHighLowDiscount,
    this.priceHighLow,
    this.hasDiscount,
    this.discount,
    this.strokedPrice,
    this.variant,
    this.variants,
    this.mainPrice,
    this.choiceOptions,
    this.colors,
    this.minQty,
    this.currencySymbol,
    this.tags,
    this.rating,
    this.sales,
    this.isDigital,
    this.isWishlist,
    this.sellerId,
    this.countReviews,
    this.soldByType,
    this.soldByName,
    this.shop,
    this.reviews,
    this.isResale,
    this.resellerId,
    this.category,
    this.brand,
    this.description,
    this.videoProvider,
    this.videoLink,
    this.categoryName,
    this.brandName,
    this.hasVipOffer,
    this.unit,
    this.isFresh,
    this.loyaltyPoints,
    this.hasShareholderDiscount,
    this.showProductCounter = false,
    this.addedQtyToCart = 0,
    this.hasSpecialLoyaltyPoints,
    this.maxQnt,
    this.productOptions,
    this.isAddedTCompare = false});

  Future<void> isAddedToCompare() async {
    var items = await getIt<ComparedProductsDb>().getItems();
    if (items
        .where((e) => e.productId == id)
        .toList()
        .isNotEmpty) {
      isAddedTCompare = true;
    }
  }

  bool showPriceDiscount({bool? showVipDiscount}) =>
      (hasDiscount == true || showVipDiscount == true);

  bool get showSpecialPoints => hasSpecialLoyaltyPoints == true;

  bool get isOutOfStock => (variant?.currentStock ?? 0) == 0 && !isFreshProduct;

  bool get isFreshProduct => isFresh == true;

  // bool get isOutOfStock => (variant?.currentStock ?? 0) > 0 ;

  bool get sameQntInCart => (variant?.currentStock ?? 0) == addedQtyToCart;


  bool get isPharmProduct => type == "pharmacy";

  bool get isRestaurantProduct => type == "restaurant";

  bool get haveOptions => productOptions?.isNotEmpty == true;

  String getPriceWhenHavePointsAndDiscount() {
    if (hasSpecialLoyaltyPoints == true) {
      return priceHighLow ?? "";
    } else {
      return priceHighLowDiscount ?? "";
    }
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return json['type'] == 'pharmacy'
        ? PharmacyProduct.fromJson(json)
        : NormalProduct.fromJson(json);
  }

  Product.fromJsonBase(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    unit = json['unit'];
    maxQnt = json['max_qty'];
    variants = json['variants'] != null
        ? List<Variant>.from(json['variants'].map((x) => Variant.fromJson(x)))
        : null;
    if (json['product_options'] != null) {
      productOptions = <ProductOptionModel>[];

      json['product_options'].forEach((v) {
        productOptions!.add(ProductOptionModel.fromJson(v));
      });
    }
    thumbnailImage = json['thumbnail_image'];
    images = json['images'].cast<String>();
    isMultiple = json['is_multiple'];
    priceHighLowDiscount = json['price_high_low_discount'];
    prescriptionRequired = json['prescription_required'];
    insuranceEligible = json['insurance_eligible'];
    priceHighLow = json['price_high_low'];
    hasDiscount = json['has_discount'];
    discount = json['discount'];
    if (json['choice_options'] != null) {
      choiceOptions = <ProductAttributesOptions>[];
      json['choice_options'].forEach((v) {
        choiceOptions!.add(ProductAttributesOptions.fromJson(v));
      });
    }
    if (json['colors'] != null) {
      colors = <ColorDomainModel>[];
      json['colors'].forEach((v) {
        colors!.add(ColorDomainModel.fromJson(v));
      });
    }
    minQty = json['min_qty'];
    currencySymbol = json['currency_symbol'];
    variant =
    json['variant'] != null ? Variant.fromJson(json['variant']) : null;
    tags = json['tags'].cast<String>();
    rating = json['rating'];
    sales = json['sales'];
    unit = json['unit'];
    isDigital = json['is_digital'];
    isWishlist = json['is_wishlist'];
    sellerId = json['seller_id'];
    countReviews = json['count_reviews'];
    soldByType = json['sold_by_type'];
    soldByName = json['sold_by_name'];
    shop = json['shop'] != null ? ShopCardDomainModel.fromJson(json['shop']) : null;
    isResale = json['is_resale'];
    resellerId = json['reseller_id'];
    description = json['description'];
    videoProvider = json['video_provider'];
    videoLink = json['video_link'];
    categoryName = json['category_name'];
    brandName = json['brand_name'];
    hasVipOffer = json['has_vip_offer'];
    hasShareholderDiscount = json['has_shareholder_discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['thumbnail_image'] = thumbnailImage;
    data['images'] = images;
    data['is_multiple'] = isMultiple;
    data['price_high_low_discount'] = priceHighLowDiscount;
    data['price_high_low'] = priceHighLow;
    data['has_discount'] = hasDiscount;
    data['discount'] = discount;
    if (choiceOptions != null) {
      data['choice_options'] = choiceOptions!.map((v) => v.toJson()).toList();
    }
    if (colors != null) {
      data['colors'] = colors!.map((v) => v.toJson()).toList();
    }
    data['min_qty'] = minQty;
    data['currency_symbol'] = currencySymbol;
    if (variant != null) {
      data['variant'] = variant!.toJson();
    }
    data['tags'] = tags;
    data['rating'] = rating;
    data['sales'] = sales;
    data['is_digital'] = isDigital;
    data['is_wishlist'] = isWishlist;
    data['seller_id'] = sellerId;
    data['count_reviews'] = countReviews;
    data['sold_by_type'] = soldByType;
    data['sold_by_name'] = soldByName;
    data['variants'] = variants?.map((e) => e.toJson()).toList();
    if (shop != null) {
      data['shop'] = shop!.toJson();
    }
    if (productOptions != null) {
      data['product_options'] =
          productOptions!.map((v) => v.toJson()).toList();
    }
    data['is_resale'] = isResale;
    data['reseller_id'] = resellerId;
    data['description'] = description;
    data['video_provider'] = videoProvider;
    data['video_link'] = videoLink;
    data['category_name'] = categoryName;
    data['brand_name'] = brandName;
    data['has_vip_offer'] = hasVipOffer;
    data['max_qty'] = maxQnt;
    data['has_shareholder_discount'] = hasShareholderDiscount;
    data['prescription_required'] = prescriptionRequired;
    data['insurance_eligible'] = insuranceEligible;
    return data;
  }
}
