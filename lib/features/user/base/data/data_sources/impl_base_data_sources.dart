// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart';
import 'package:flutter_tdd/features/user/base/data/models/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseDataSources)
class ImplBaseDataSources extends BaseDataSources {
  @override
  Future<Either<Failure, bool>> logOut() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.logout,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["key"] == 'success',
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, List<ShopModel>>> getFollowing(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getFollowing,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<ShopModel>.from(
        json.map((e) => ShopModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<List<ShopModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<LangModel>>> getLanguages(bool params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getLanguages,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      toJsonFunc: (json) => List<LangModel>.from(
        json.map((e) => LangModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<List<LangModel>>().call(model);
  }
}
