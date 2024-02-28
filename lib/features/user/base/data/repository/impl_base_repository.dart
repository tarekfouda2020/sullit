import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart';
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository with ModelToDomain {
  var dataSources = getIt<BaseDataSources>();

  @override
  Future<Either<Failure, bool>> logOut() async {
    return await dataSources.logOut();
  }

  @override
  Future<Either<Failure, List<Shop>>> getFollowing(bool params) async {
    var result = await dataSources.getFollowing(params);
    return toDomainResultList(result);
  }
}
