// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/blog/data/data_sources/blog_data_sources.dart';
import 'package:flutter_tdd/features/user/blog/data/models/blog_model/blog_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BlogDataSources)
class ImplBlogDataSources extends BlogDataSources {
  @override
  Future<Either<Failure, List<BlogModel>>> getBlogs(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.blogs,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<BlogModel>.from(
        json.map(
          (e) => BlogModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"]["blogs"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<BlogModel>>().call(model);
  }
}
