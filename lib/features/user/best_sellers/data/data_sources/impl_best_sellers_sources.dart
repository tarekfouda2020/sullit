

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/best_sellers/data/data_sources/best_sellers_sources.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BestSellersSources)

class ImplBestSellersSources extends BestSellersSources{
  @override
  Future<Either<Failure, List<ShopModel>>> getShop(SearchResultParams param) async{
      HttpRequestModel model = HttpRequestModel(
        url: ApiNames.shopsList+param.paramToQuery(),
        responseType: ResType.list,
        requestMethod: RequestMethod.get,
        responseKey: (data) => data["data"]["shops"],
        showLoader: false,
        refresh: param.refresh,
        toJsonFunc: (json) => List<ShopModel>.from(json.map((e) => ShopModel.fromJson(e)),
        ),
      );
      return await GenericHttpImpl<List<ShopModel>>()(model);
  }



}

