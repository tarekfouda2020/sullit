// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/remote_data_sources/products_data_source.dart';
import 'package:flutter_tdd/features/user/products/data/models/home_model/home_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_details_model/product_details_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_sections_model/product_sections_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/queries_model/queries_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/seller_products_model/seller_products_model.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/product_details_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/seller_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/send_query_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsDataSource)
class ImplProductsDataSource extends ProductsDataSource {
  @override
  Future<Either<Failure, HomeModel>> getHome(bool param) async {
    String? deviceId = GlobalState.instance.get(GlobalStateKeys.deviceToken);
    if (deviceId != null && deviceId.isNotEmpty) {
      deviceId = "?mac_address=$deviceId";
    } else {
      deviceId = "";
    }

    HttpRequestModel model = HttpRequestModel(
      url: "${ApiNames.getHome}$deviceId",
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data["data"],
      showLoader: false,
      refresh: param,
      toJsonFunc: (json) => HomeModel.fromJson(json),
    );
    return await GenericHttpImpl<HomeModel>()(model);
  }

  @override
  Future<Either<Failure, ProductDetailsModel>> getProductDetails(
      ProductDetailsParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getProductDetails + param.paramToQuery(),
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data["data"],
      showLoader: false,
      refresh: param.refresh,
      toJsonFunc: (json) => ProductDetailsModel.fromJson(json),
    );
    return await GenericHttpImpl<ProductDetailsModel>()(model);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getPopularProducts(
      PopularProductsParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getPopularProducts + param.paramToQuery(),
      requestMethod: RequestMethod.get,
      refresh: param.refresh,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<ProductModel>.from(
        json.map((e) => ProductModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["section_products"]["products"],
    );
    return await GenericHttpImpl<List<ProductModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> toggleFavourite(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.toggleWishlist(param),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: false,
      responseKey: (data) => data["data"]["status"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, QueriesModel>> sendQuery(
      SendQueryParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.sendQuery + params.paramToQuery(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      requestBody: params.toJson(),
      showLoader: true,
      toJsonFunc: (json) => QueriesModel.fromJson(json),
      responseKey: (data) => data["data"],
      // errorFunc: (data)=>data["msg"]
    );
    return await GenericHttpImpl<QueriesModel>().call(model);
  }

  @override
  Future<Either<Failure, ProductModel>> getVariantPrice(
      VariantPriceParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getVariantPrice(param.id),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      requestBody: param.toJson(),
      toJsonFunc: (json) => ProductModel.fromJson(json),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<ProductModel>().call(model);
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getDigitalProducts(
      bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getDownloadProducts,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<ProductModel>.from(
        json.map((e) => ProductModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["products"],
    );
    return await GenericHttpImpl<List<ProductModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<ProductSectionsModel>>> getProductSections(
      int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getProductSections(param),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<ProductSectionsModel>.from(
        json.map((e) => ProductSectionsModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["sections"],
    );
    return await GenericHttpImpl<List<ProductSectionsModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> toggleFollowing(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.toggleFollowing(param),
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["data"]["follow"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, ProductDetailsModel>> scanProduct(String param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.skuSearch(param),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (data) => data["data"],
      toJsonFunc: (data) => ProductDetailsModel.fromJson(data),
    );
    return await GenericHttpImpl<ProductDetailsModel>().call(model);
  }

  @override
  Future<Either<Failure, SellerProductsModel>> sellerProducts(
      SellerProductsParams param) async {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.shopProducts(param.sellerId) + param.paramsToQuery(),
        requestMethod: RequestMethod.get,
        responseType: ResType.model,
        responseKey: (data) => data['data'],
        toJsonFunc: (data) => SellerProductsModel.fromJson(data),
        refresh: param.paginateParams.refresh);
    return await GenericHttpImpl<SellerProductsModel>().call(model);
  }
}
