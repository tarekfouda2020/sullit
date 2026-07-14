import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/pharmacies_sources.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_branch_model/pharmacy_branch_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_checkout_summary_model/pharmacy_checkout_summary_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_branches_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_create_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_checkout_domai_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharamcy_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_shipping_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_summary_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_confirm_order_model/pharmacy_confirm_order_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_confirm_order_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_order_requested_by_model/pharmacy_order_requested_by_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_requested_by_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_order_terms_model/pharmacy_order_terms_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_terms_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/saved_prescription_model/saved_prescription_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/saved_prescription_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:injectable/injectable.dart';

import '../../../purchasing/presentation/pages/order_summary/order_summary_imports.dart';

@Injectable(as: PharmaciesRepository)
class ImplPharmaciesRepository extends PharmaciesRepository with ModelToDomain {
  final PharmaciesSources dataSources = getIt<PharmaciesSources>();

  @override
  Future<Either<Failure, List<ShopCategory>>> getShopCategories(
      ShopCategoryParams param) async {
    var result = await dataSources.getShopCategories(param);
    return toDomainResultList<ShopCategory,ShopCategoryModel>(result);
  }

  @override
  Future<Either<Failure, Shop>> getShopDetails(ShopIdParams param) async {
    final result = await dataSources.getShopDetails(param);
    return toDomainResult<Shop,ShopModel>(result);
  }

  @override
  Future<Either<Failure, List<PharmacyShippingDomainModel>>> getPharmacyShippingInfo(
      PharamcyShippingInfoParams param) async {
    final result = await dataSources.getPharmacyShippingInfo(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, Shipping>> getCartSummary(
      PharmacyCheckoutParams param) async {
    final result = await dataSources.getCartSummary(param);
    return toDomainResult(result);
  }


  @override
  Future<Either<Failure, OrderSummaryDomainModel>> createOrder(PharmacyCreateOrderParams param) async {
    var result = await dataSources.createOrder(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, OrderSummaryDomainModel>> createPrescriptionOrder(PharmacyCreateOrderParams param) async {
    var result = await dataSources.createPrescriptionOrder(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, PharmacyCheckoutDomaiModel>> getConfirmSummary(
      PharmacyConfirmSummaryParams param) async {
    var result = await dataSources.getConfirmSummary(param);
    return toDomainResult<PharmacyCheckoutDomaiModel,PharmacyCheckoutSummaryModel>(result);
  }

  @override
  Future<Either<Failure, PharmacyConfirmOrderDomainModel>> confirmOrder(
      PharmacyConfirmOrderParams param) async {
    var result = await dataSources.confirmOrder(param);
    return toDomainResult<PharmacyConfirmOrderDomainModel, PharmacyConfirmOrderModel>(result);
  }


  @override
  Future<Either<Failure, List<PharmacyBranchDomainModel>>> getPharmacyBranches(PharmacyBranchesParams param) async {
    var result = await dataSources.getPharmacyBranches(param);
    return toDomainResultList<PharmacyBranchDomainModel,PharmacyBranchModel>(result);
  }

  @override
  Future<Either<Failure, List<PharmacyOrderRequestedByModel>>> getPharmacyOrderRequestedBy() async {
    var result = await dataSources.getPharmacyOrderRequestedBy();
    return toDomainResultList<PharmacyOrderRequestedByModel, PharmacyOrderRequestedBy>(result);
  }

  @override
  Future<Either<Failure, PharmacyOrderTermsModel>> getPharmacyOrderTerms() async {
    var result = await dataSources.getPharmacyOrderTerms();
    return toDomainResult<PharmacyOrderTermsModel, PharmacyOrderTerms>(result);
  }

  @override
  Future<Either<Failure, List<SavedPrescriptionModel>>> getSavedPrescriptions(
      GenericPaginateParams param) async {
    var result = await dataSources.getSavedPrescriptions(param);
    return toDomainResultList<SavedPrescriptionModel, SavedPrescriptionApiModel>(result);
  }

}
