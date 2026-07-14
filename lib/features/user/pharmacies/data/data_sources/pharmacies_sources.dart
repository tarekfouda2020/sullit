import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_branch_model/pharmacy_branch_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_checkout_summary_model/pharmacy_checkout_summary_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_branches_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharamcy_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_shipping_model/pharmacy_shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';

import '../../domain/entity/pharmacy_create_order_params.dart';
import '../../domain/entity/pharmacy_confirm_summary_params.dart';
import '../../domain/entity/pharmacy_confirm_order_params.dart';
import '../models/pharmacy_confirm_order_model/pharmacy_confirm_order_model.dart';
import '../models/pharmacy_order_requested_by_model/pharmacy_order_requested_by_model.dart';
import '../models/pharmacy_order_terms_model/pharmacy_order_terms_model.dart';
import '../models/saved_prescription_model/saved_prescription_model.dart';
import '../../../category/domain/entities/generic_paginate_params.dart';

abstract class PharmaciesSources {
  Future<Either<Failure, List<ShopCategoryModel>>> getShopCategories(
      ShopCategoryParams param);

  Future<Either<Failure, ShopModel>> getShopDetails(ShopIdParams param);

  Future<Either<Failure, List<PharmacyShippingModel>>> getPharmacyShippingInfo(PharamcyShippingInfoParams param);

  Future<Either<Failure, ShippingModel>> getCartSummary(PharmacyCheckoutParams param);

  Future<Either<Failure, OrderSummaryModel>> createOrder(PharmacyCreateOrderParams param);

  Future<Either<Failure, OrderSummaryModel>> createPrescriptionOrder(PharmacyCreateOrderParams param);

  Future<Either<Failure, PharmacyCheckoutSummaryModel>> getConfirmSummary(PharmacyConfirmSummaryParams param);

  Future<Either<Failure, PharmacyConfirmOrderModel>> confirmOrder(PharmacyConfirmOrderParams param);

  Future<Either<Failure, List<PharmacyBranchModel>>> getPharmacyBranches(PharmacyBranchesParams param);

  Future<Either<Failure, List<PharmacyOrderRequestedBy>>> getPharmacyOrderRequestedBy();

  Future<Either<Failure, PharmacyOrderTerms>> getPharmacyOrderTerms();

  Future<Either<Failure, List<SavedPrescriptionApiModel>>> getSavedPrescriptions(
      GenericPaginateParams param);
}
