import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharamcy_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_shipping_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';

abstract class PharmaciesRepository {
  Future<Either<Failure, List<ShopCategory>>> getShopCategories(
      ShopCategoryParams param);
  Future<Either<Failure, Shop>> getShopDetails(ShopIdParams param);
  Future<Either<Failure, List<PharmacyShippingDomainModel>>> getPharmacyShippingInfo(
      PharamcyShippingInfoParams param);
  Future<Either<Failure, Shipping>> getCartSummary(PharmacyCheckoutParams param);
}
