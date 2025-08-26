import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/change_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/code_verify_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/reset_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_phone_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_reset_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_login.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class ImplAuthRepository extends AuthRepository with ModelToDomain {
  var dataSources = getIt<AuthDataSource>();

  @override
  Future<Either<Failure, UserDomainModel>> register(UserRegisterParams params) async {
    var result = await dataSources.register(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, UserLogin>> login(LoginParams param) async {
    var result = await dataSources.login(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, String>> forgetPassword(String param) async {
    return await dataSources.forgetPassword(param);
  }

  @override
  Future<Either<Failure, String>> resendPasswordCode(String param) async {
    return await dataSources.resendPasswordCode(param);
  }

  @override
  Future<Either<Failure, String>> resetPassword(ResetPasswordParams param) async {
    return await dataSources.resetPassword(param);
  }

  @override
  Future<Either<Failure, bool>> verifyPhone(VerifyPhoneParams params) async {
    return await dataSources.verifyPhone(params);
  }

  @override
  Future<Either<Failure, String>> resendRegisterCode(String param) async {
    return await dataSources.resendRegisterCode(param);
  }

  @override
  Future<Either<Failure, String>> codeVerify(CodeVerifyParams params) async {
    return await dataSources.codeVerify(params);
  }

  @override
  Future<Either<Failure, bool>> deleteAccount(NoParams params) async {
    return await dataSources.deleteAccount(params);
  }

  @override
  Future<Either<Failure, String>> resendVerifyCode(String param) async {
    return await dataSources.resendVerifyCode(param);
  }

  @override
  Future<Either<Failure, String>> verifyResetPassword(VerifyResetPasswordParams params) async {
    return await dataSources.verifyResetPassword(params);
  }

  @override
  Future<Either<Failure, UserDomainModel>> emailVerify(CodeVerifyParams params) async {
    var result = await dataSources.emailVerify(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, String>> changePassword(ChangePasswordParams params) async {
    return await dataSources.changePassword(params);
  }
}
