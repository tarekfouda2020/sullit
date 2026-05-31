// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/pharmacies_sources.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PharmaciesSources)
class ImplPharmaciesSources extends PharmaciesSources {
  @override
  Future<Either<Failure, List<ShopCategoryModel>>> getShopCategories(ShopCategoryParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.shopCategories(param.shopId),
      requestBody: param.toJson(),
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data['data']['categories'],
      showLoader: false,
      refresh: param.paginParams.refresh,
      toJsonFunc: (json) => List<ShopCategoryModel>.from(
        (json as List).map((e) => ShopCategoryModel.fromJson(e as Map<String, dynamic>)),
      ),
    );
    return await GenericHttpImpl<List<ShopCategoryModel>>()(model);
  }

  @override
  Future<Either<Failure, ShopModel>> getShopDetails(ShopIdParams param) async {
    final model = HttpRequestModel(
      url: ApiNames.shopDetails(param.shopId),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (data) => data['data']['shop'] ,
      refresh: param.refresh,
      showLoader: false,
      toJsonFunc: (json) => ShopModel.fromJson(json),
    );
    return await GenericHttpImpl<ShopModel>()(model);
  }
}
