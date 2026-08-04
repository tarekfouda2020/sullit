import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/profile/data/data_sources/profile_data_sources.dart';
import 'package:flutter_tdd/features/user/profile/domain/entities/profile_params.dart';
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepository)
class ImplProfileRepository extends ProfileRepository with ModelToDomain {
  var dataSources = getIt<ProfileDataSources>();

  @override
  Future<Either<Failure, UserDomainModel>> updateProfile(
      ProfileParams params) async {
    var result = await dataSources.updateProfile(params);
    return toDomainResult<UserDomainModel, UserModel>(result);
  }

  @override
  Future<Either<Failure, bool>> updateProfileEmail(String param) async {
    return await dataSources.updateProfileEmail(param);
  }

  @override
  Future<Either<Failure, UserDomainModel>> getProfile(bool params) async {
    var result = await dataSources.getProfile(params);
    return toDomainResult<UserDomainModel, UserModel>(result);
  }
}
