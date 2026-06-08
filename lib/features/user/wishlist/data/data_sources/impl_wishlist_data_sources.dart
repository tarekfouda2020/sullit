// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/wishlist_data_sources.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WishlistDataSources)
class ImplWishlistDataSources extends WishlistDataSources {
  @override
  Future<Either<Failure, List<ProductModel>>> getWishlist(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.wishlist,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<ProductModel>.from(
        json.map(
          (e) => ProductModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"]["products"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<ProductModel>>().call(model);
  }
}
