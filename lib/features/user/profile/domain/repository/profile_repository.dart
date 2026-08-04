import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/profile/domain/entities/profile_params.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserDomainModel>> updateProfile(ProfileParams params);
  Future<Either<Failure, bool>> updateProfileEmail(String param);
  Future<Either<Failure, UserDomainModel>> getProfile(bool params);
}
