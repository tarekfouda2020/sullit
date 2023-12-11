import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/user/profile/domain/entities/profile_params.dart';

abstract class ProfileDataSources {
  Future<Either<Failure, UserModel>> updateProfile (ProfileParams params);
  Future<Either<Failure, bool>> updateProfileEmail (String param);
  Future<Either<Failure, UserModel>> getProfile (bool params);

}