// ignore_for_file: avoid_dynamic_calls

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/classified_products/data/data_sources/classified_products_data_sources.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/classified_products_model/classified_products_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_package_model/cus_package_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_product_model/cus_product_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_products_brand_model/cus_products_brand_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_products_cat_model/cus_products_cat_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/file_model/file_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/payment_method_model/payment_method_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/purchase_package_response_model/purchase_package_response_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/video_provider_model/video_provider_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/add_classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/edit_classified_product_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/purchase_package_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/uploaded_files_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ClassifiedProductsDataSources)
class ImplClassifiedProductsDataSources extends ClassifiedProductsDataSources {
  @override
  Future<Either<Failure, List<FileModel>>> getCusProducts(
      UploadedFilesParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getUploadedFiles + params.toQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<FileModel>.from(
        json.map(
          (e) => FileModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"]["files"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<FileModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> setAddFile(File param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.uploadFile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: {'file': param},
      responseKey: (data) => data["key"] == 'success',
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, bool>> setAddFiles(List<File> param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.uploadFiles,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: {'files[]': param},
      responseKey: (data) => data["key"] == 'success',
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, List<VideoProviderModel>>> getVideoProviders(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.videoProviders,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<VideoProviderModel>.from(
        json.map(
              (e) => VideoProviderModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<VideoProviderModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> setAddClassifiedProduct(AddClassifiedProductParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.customersProducts,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody:  params.toJson(),
      responseKey: (data) => data["key"] == 'success',
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, List<CusProductsBrandModel>>> getCusProductsBrands(bool param) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cusProductsBrands,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<CusProductsBrandModel>.from(
        json.map(
              (e) => CusProductsBrandModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<CusProductsBrandModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<CusProductsCatModel>>> getCusProductsCats(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cusProductsCats,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc:  (json) => List<CusProductsCatModel>.from(
        json.map(
              (e) => CusProductsCatModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<List<CusProductsCatModel>>().call(model);
  }

  @override
  Future<Either<Failure, ClassifiedProductsModel>> getClassifiedProducts(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.classifiedProducts,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => ClassifiedProductsModel.fromJson(json),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<ClassifiedProductsModel>().call(model);
  }

  @override
  Future<Either<Failure, CusProductModel>> getClassifiedProduct(
      GenericParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getClassifiedProduct(param.id),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      // showLoader: true,
      refresh: param.refresh,
      toJsonFunc: (json) => CusProductModel.fromJson(json),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<CusProductModel>().call(model);
  }

  @override
  Future<Either<Failure, bool>> editClassifiedProduct(
      EditClassifiedProductParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.editClassifiedProduct(params.id),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: params.toJson(),
      responseKey: (data) => data["key"] == 'success',
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, List<CusPackageModel>>> getPackages(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getPackages,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      showLoader: true,
      toJsonFunc: (data) => List<CusPackageModel>.from(
        data.map(
          (e) => CusPackageModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<CusPackageModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<PaymentMethodModel>>> getPaymentMethods(bool param)async  {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.paymentOptions,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      showLoader: true,
      toJsonFunc: (data) => List<PaymentMethodModel>.from(
        data.map(
              (e) => PaymentMethodModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<PaymentMethodModel>>().call(model);
  }

  @override
  Future<Either<Failure, PurchasePackageResponseModel >> purchasePackage(PurchasePackageParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.purchasePackage(params.id),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => PurchasePackageResponseModel.fromJson(data),
      requestBody: params.toJson(),
      responseKey: (data) => data,
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<PurchasePackageResponseModel>().call(model);
  }

  @override
  Future<Either<Failure, String>> deleteProduct(int param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.deleteProduct(param),
      requestMethod: RequestMethod.delete,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["msg"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, bool>> changeStatus(int param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.changeStatus(param),
      requestMethod: RequestMethod.put,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["data"]["available_status"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }
}