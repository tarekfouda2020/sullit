import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/code_verify_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/login_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/reset_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/user_register_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_phone_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_reset_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_login.dart';

abstract class AuthRepository{
  Future<Either<Failure, UserDomainModel>> register (UserRegisterParams params);
  Future<Either<Failure, UserLogin>> login(LoginParams param);
  Future<Either<Failure, String>> forgetPassword(String param);
  Future<Either<Failure, String>> resendPasswordCode(String param);
  Future<Either<Failure, String>> resendRegisterCode(String param);
  Future<Either<Failure, String>> resetPassword(ResetPasswordParams param);
  Future<Either<Failure, bool>> verifyPhone (VerifyPhoneParams params);
  Future<Either<Failure, String>> resendVerifyCode(String param);

  Future<Either<Failure, String>> verifyResetPassword (VerifyResetPasswordParams params);

  Future<Either<Failure, String>> codeVerify (CodeVerifyParams params);
  Future<Either<Failure, bool>> deleteAccount (NoParams params);
}