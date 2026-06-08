import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharamcy_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_shipping_model/pharmacy_shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';

import '../../domain/entity/pharmacy_create_order_params.dart';

abstract class PharmaciesSources {
  Future<Either<Failure, List<ShopCategoryModel>>> getShopCategories(
      ShopCategoryParams param);

  Future<Either<Failure, ShopModel>> getShopDetails(ShopIdParams param);

  Future<Either<Failure, List<PharmacyShippingModel>>> getPharmacyShippingInfo(PharamcyShippingInfoParams param);

  Future<Either<Failure, ShippingModel>> getCartSummary(PharmacyCheckoutParams param);

  Future<Either<Failure, OrderSummaryModel>> createOrder(PharmacyCreateOrderParams param);
}
