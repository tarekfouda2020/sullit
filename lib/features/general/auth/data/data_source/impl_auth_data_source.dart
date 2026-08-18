// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_login_model/user_login_model.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/change_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/code_verify_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/reset_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_phone_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_reset_password_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource extends AuthDataSource {
  @override
  Future<Either<Failure, UserLoginModel>> login(LoginParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.login,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data,
      requestBody: param.toJson(),
      showLoader: true,
      errorFunc: (data) => data["msg"],
      toJsonFunc: (json) => UserLoginModel.fromJson(json),
    );
    return await GenericHttpImpl<UserLoginModel>()(model);
  }

  @override
  Future<Either<Failure, String>> forgetPassword(String param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.forgetPassword,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: {"email": param},
      responseKey: (data) => data["msg"],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, String>> resendPasswordCode(String param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.resendPasswordCode,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: {"email": param},
      responseKey: (data) => data["msg"],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, String>> resetPassword(
      ResetPasswordParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.resetPassword,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: param.toJson(),
      responseKey: (data) => data["msg"],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, UserModel>> register(UserRegisterParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.register,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      requestBody: params.toJson(),
      showLoader: true,
      responseKey: (data) => data["data"]["user"],
      toJsonFunc: (json) => UserModel.fromJson(json),
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<UserModel>().call(model);
  }

  @override
  Future<Either<Failure, bool>> verifyPhone(VerifyPhoneParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.verifyPhone,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: params.toJson(),
      showLoader: true,
      responseKey: (data) => params.isSuccess(data),
      errorFunc: (data) => data['msg'],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, String>> resendRegisterCode(String param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.resendRegisterCode,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: {"email": param},
      responseKey: (data) => data["msg"],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, String>> codeVerify(CodeVerifyParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.codeVerify,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: params.toJson(),
      responseKey: (data) => data["key"],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, bool>> deleteAccount(NoParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.deleteAccount,
      requestMethod: RequestMethod.delete,
      responseType: ResType.type,
      responseKey: (data) => data["key"] == "success",
      showLoader: true,
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<Either<Failure, String>> resendVerifyCode(String param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.resendVerifyCode,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: {"phone": param},
      responseKey: (data) => data["msg"],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, String>> verifyResetPassword(
      VerifyResetPasswordParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.resetPassword,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: params.toJson(),
      responseKey: (data) => data["msg"],
      showLoader: true,
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<Either<Failure, UserModel>> emailVerify(
      CodeVerifyParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.verifyEmail,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      requestBody: params.toJson(),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data['msg'],
      showLoader: false,
      toJsonFunc: (data) => UserModel.fromJson(data),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<Either<Failure, String>> changePassword(
      ChangePasswordParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.changePassword,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: params.toJson(),
      responseKey: (data) => data["msg"],
      errorFunc: (data) => data['msg'],
      showLoader: false,
    );
    return await GenericHttpImpl<String>()(model);
  }
}
