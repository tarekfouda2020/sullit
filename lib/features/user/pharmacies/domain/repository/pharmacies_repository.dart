import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_branches_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_create_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_checkout_domai_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharamcy_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_shipping_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_summary_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_confirm_order_domain_model.dart';

import '../../../purchasing/presentation/pages/order_summary/order_summary_imports.dart';

abstract class PharmaciesRepository {
  Future<Either<Failure, List<ShopCategory>>> getShopCategories(
      ShopCategoryParams param);
  Future<Either<Failure, Shop>> getShopDetails(ShopIdParams param);
  Future<Either<Failure, List<PharmacyShippingDomainModel>>> getPharmacyShippingInfo(
      PharamcyShippingInfoParams param);
  Future<Either<Failure, Shipping>> getCartSummary(PharmacyCheckoutParams param);

  Future<Either<Failure, OrderSummaryDomainModel>> createOrder(PharmacyCreateOrderParams param);

  Future<Either<Failure, PharmacyCheckoutDomaiModel>> getConfirmSummary(PharmacyConfirmSummaryParams param);

  Future<Either<Failure, PharmacyConfirmOrderDomainModel>> confirmOrder(PharmacyConfirmOrderParams param);

  Future<Either<Failure, List<PharmacyBranchDomainModel>>> getPharmacyBranches(PharmacyBranchesParams param);

}
