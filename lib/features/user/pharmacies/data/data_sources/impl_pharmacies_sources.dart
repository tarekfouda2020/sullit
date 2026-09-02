// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/seller_shipping_model/seller_shipping_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/pharmacies_sources.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_branch_model/pharmacy_branch_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_checkout_summary_model/pharmacy_checkout_summary_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_branches_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_create_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/seller_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharamcy_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_shipping_model/pharmacy_shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_summary_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_confirm_order_model/pharmacy_confirm_order_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_order_requested_by_model/pharmacy_order_requested_by_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_order_terms_model/pharmacy_order_terms_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/saved_prescription_model/saved_prescription_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/upload_prescription_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PharmaciesSources)
class ImplPharmaciesSources extends PharmaciesSources {
  @override
  Future<Either<Failure, List<ShopCategoryModel>>> getShopCategories(
      ShopCategoryParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.shopCategories(param.shopId),
      requestBody: param.toJson(),
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data['data']['categories'],
      showLoader: false,
      refresh: param.paginParams.refresh,
      toJsonFunc: (json) => List<ShopCategoryModel>.from(
        (json as List)
            .map((e) => ShopCategoryModel.fromJson(e as Map<String, dynamic>)),
      ),
    );
    return await GenericHttpImpl<List<ShopCategoryModel>>()(model);
  }

  @override
  Future<Either<Failure, ShopModel>> getShopDetails(ShopIdParams param) async {
    final model = HttpRequestModel(
      url: ApiNames.shopDetails(param.shopId),
      requestMethod: RequestMethod.get,
      requestBody: param.toJson(),
      responseType: ResType.model,
      responseKey: (data) => data['data']['shop'],
      refresh: param.refresh,
      showLoader: false,
      toJsonFunc: (json) => ShopModel.fromJson(json),
    );
    return await GenericHttpImpl<ShopModel>()(model);
  }

  @override
  Future<Either<Failure, List<PharmacyShippingModel>>> getPharmacyShippingInfo(
      PharamcyShippingInfoParams param) async {
    final model = HttpRequestModel(
      url: ApiNames.pharmacyShippingInfo,
      requestMethod: RequestMethod.post,
      requestBody: param.toJson(),
      responseType: ResType.list,
      responseKey: (data) => data['data'],
      showLoader: true,
      toJsonFunc: (json) => List<PharmacyShippingModel>.from(json.map((e) => PharmacyShippingModel.fromJson(e),
      ),
    ));
    return await GenericHttpImpl<List<PharmacyShippingModel>>()(model);
  }

  @override
  Future<Either<Failure, ShippingModel>> getCartSummary(
      PharmacyCheckoutParams param) async {
    final model = HttpRequestModel(
      url: ApiNames.cartSummary,
      requestMethod: RequestMethod.post,
      requestBody: param.toJson(),
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      showLoader: true,
      toJsonFunc: (json) => ShippingModel.fromJson(json),
    );
    return await GenericHttpImpl<ShippingModel>()(model);
  }



  @override
  Future<Either<Failure, OrderSummaryModel>> createOrder(PharmacyCreateOrderParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.createPharmacyOrder,
      requestBody: param.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => OrderSummaryModel.fromJson(data),
      responseKey: (data) => data['data'],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<OrderSummaryModel>().call(model);
  }

  @override
  Future<Either<Failure, OrderSummaryModel>> createPrescriptionOrder(PharmacyCreateOrderParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.createPharmacyPrescriptionOrder,
      requestBody: param.toPrescriptionOrderJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => OrderSummaryModel.fromJson(data),
      responseKey: (data) => data['data'],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<OrderSummaryModel>().call(model);
  }

  @override
  Future<Either<Failure, PharmacyCheckoutSummaryModel>> getConfirmSummary(
      PharmacyConfirmSummaryParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.pharmacyConfirmSummary(param.id),
      requestBody: param.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => PharmacyCheckoutSummaryModel.fromJson(data),
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<PharmacyCheckoutSummaryModel>().call(model);
  }

  @override
  Future<Either<Failure, PharmacyConfirmOrderModel>> confirmOrder(
      PharmacyConfirmOrderParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.pharmacyConfirmOrder(param.orderId),
      requestBody: param.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => PharmacyConfirmOrderModel.fromJson(data),
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<PharmacyConfirmOrderModel>().call(model);
  }

  @override
  Future<Either<Failure, List<PharmacyBranchModel>>> getPharmacyBranches(PharmacyBranchesParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.pharmacyBranches(param.pharmacyId),
      requestBody: param.toJson(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param.formRemote,
      toJsonFunc: (data) => List<PharmacyBranchModel>.from(data.map((json) => PharmacyBranchModel.fromJson(json))),
      responseKey: (data) => data['data']['branches'],
    );
    return await GenericHttpImpl<List<PharmacyBranchModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<PharmacyOrderRequestedBy>>> getPharmacyOrderRequestedBy() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.pharmacyOrderRequestedBy,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: false,
      toJsonFunc: (json) => List<PharmacyOrderRequestedBy>.from(
        json.map((e) => PharmacyOrderRequestedBy.fromJson(e)),
      ),
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<List<PharmacyOrderRequestedBy>>().call(model);
  }

  @override
  Future<Either<Failure, PharmacyOrderTerms>> getPharmacyOrderTerms() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.pharmacyOrderTerms,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: false,
      toJsonFunc: (json) => PharmacyOrderTerms.fromJson(json),
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<PharmacyOrderTerms>().call(model);
  }

  @override
  Future<Either<Failure, List<SavedPrescriptionApiModel>>> getSavedPrescriptions(
      GenericPaginateParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.prescriptions + param.paramsToQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param.refresh,
      showLoader: false,
      toJsonFunc: (json) => List<SavedPrescriptionApiModel>.from(
        json.map((e) => SavedPrescriptionApiModel.fromJson(e)),
      ),
      responseKey: (data) => data['data']['prescriptions'],
    );
    return await GenericHttpImpl<List<SavedPrescriptionApiModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> deleteSavedPrescription(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.deleteSavedPrescription(param),
      requestMethod: RequestMethod.delete,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["key"] == "success",
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, SavedPrescriptionApiModel>> uploadPrescription(
      UploadPrescriptionParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.uploadPrescription,
      requestBody: param.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => SavedPrescriptionApiModel.fromJson(json),
      responseKey: (data) => data['data'],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<SavedPrescriptionApiModel>().call(model);
  }

  @override
  Future<Either<Failure, SellerShippingModel>> getShippingInfo(SellerShippingInfoParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getSellerShippingInfo,
      requestBody: param.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => SellerShippingModel.fromJson(json),
      responseKey: (data) => data['data'],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<SellerShippingModel>().call(model);
  }

}
