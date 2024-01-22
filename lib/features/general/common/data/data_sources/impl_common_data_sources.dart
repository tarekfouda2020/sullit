// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/general/common/data/data_sources/common_data_sources.dart';
import 'package:flutter_tdd/features/general/common/data/models/support_msg_model/support_msg_model.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/contact_us_params.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/support_msg_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommonDataSources)
class ImplCommonDataSources extends CommonDataSources {
  @override
  Future<Either<Failure, String>> getTerms() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.terms,
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["data"]["content"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, String>> getPrivacyPolicy() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.privacyPolicy,
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["data"]["content"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, bool>> contactUs(ContactUsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.contactUs,
      requestMethod: RequestMethod.post,
      requestBody: params.toJson(),
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => params.isSuccess(data),
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, String>> supportPolicy() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.supportPolicy,
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["data"]["content"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, String>> returnPolicy() async {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.returnPolicy,
        requestMethod: RequestMethod.get,
        responseType: ResType.type,
        showLoader: true,
        responseKey: (data) => data["data"]["content"],
        errorFunc: (data) => data["msg"],
        );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, String>> getContactUs() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getContactUs,
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data["data"]["contact_phone"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, List<SupportMsgModel>>> getSupportMessages() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getSupportMsg,
      requestMethod: RequestMethod.post,
      responseType: ResType.list,
      showLoader: false,
      toJsonFunc: (json) => List<SupportMsgModel>.from(
        json.map((e) => SupportMsgModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<SupportMsgModel>>().call(model);
  }

  @override
  Future<Either<Failure, List<SupportMsgModel>>> sendSupportMsg(
      SupportMsgParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.sendSupportMsg,
      requestMethod: RequestMethod.post,
      responseType: ResType.list,
      requestBody: params.toJson(),
      showLoader: true,
      toJsonFunc: (json) => List<SupportMsgModel>.from(
        json.map((e) => SupportMsgModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<SupportMsgModel>>().call(model);
  }
}
