// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/color_domain_model.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/variant.dart';


class Product extends BaseDomainModel {
  int? id;
  int? loyaltyPoints;
  String? name;
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
  List<ProductOptions>? choiceOptions;
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
  Shop? shop;
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
  int? addedQtyToCart;
  int? maxQnt;

  Product(
      {this.id,
      this.name,
      this.images,
      this.thumbnailImage,
      this.isMultiple,
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
      this.isAddedTCompare = false});

  Future<void> isAddedToCompare() async {
    var items = await getIt<ComparedProductsDb>().getItems();
    if (items.where((e) => e.productId == id).toList().isNotEmpty) {
      isAddedTCompare = true;
    }
  }



  bool   showPriceDiscount({bool? showVipDiscount}) => ( hasDiscount == true || showVipDiscount == true);

  bool   get showSpecialPoints => hasSpecialLoyaltyPoints == true;

  bool get isOutOfStock => (variant?.currentStock ?? 0) == 0 && !isFreshProduct;

  bool get isFreshProduct => isFresh == true;
  // bool get isOutOfStock => (variant?.currentStock ?? 0) > 0 ;

  bool get sameQntInCart => (variant?.currentStock ?? 0) == addedQtyToCart;

  String getPriceWhenHavePointsAndDiscount(){
    if(hasSpecialLoyaltyPoints==true){
      return priceHighLow ?? "";
    }else{
      return priceHighLowDiscount ?? "";
    }
  }




  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    unit = json['unit'];
    maxQnt = json['max_qty'];
    variants = json['variants'] != null ? List<Variant>.from(json['variants'].map((x) => Variant.fromJson(x))) : null;
    thumbnailImage = json['thumbnail_image'];
    images = json['images'].cast<String>();
    isMultiple = json['is_multiple'];
    priceHighLowDiscount = json['price_high_low_discount'];
    priceHighLow = json['price_high_low'];
    hasDiscount = json['has_discount'];
    discount = json['discount'];
    if (json['choice_options'] != null) {
      choiceOptions = <ProductOptions>[];
      json['choice_options'].forEach((v) {
        choiceOptions!.add(ProductOptions.fromJson(v));
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
    shop = json['shop'] != null ? Shop.fromJson(json['shop']) : null;
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
    return data;
  }
}
