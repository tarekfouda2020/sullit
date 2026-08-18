import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

/// from implements x repository add with ModelToDomainResult after the name of class
mixin ModelToDomain {
  /// example:
  /// MyResult<BlobModel> result = await iBlobRemoteSource.uploadAttachment(file);
  /// return toDomainResult<Blob, BlobModel>(result);
  Either<Failure, D>
      toDomainResult<D extends BaseDomainModel, M extends BaseApiModel>(
          Either<Failure, M> result) {
    return result.fold(
      (error) {
        return Left(error);
      },
      (data) {
        return Right(data.toDomainModel() as D);
      },
    );
  }

  /// MyResult<List<BlobModel>> result = await iBlobRemoteSource.uploadAttachment(file);
  /// return toDomainResultList<Blob, BlobModel>(result);
  Either<Failure, List<D>> toDomainResultList<D, M extends BaseApiModel>(
      Either<Failure, List<M>> result) {
    return result.fold(
      (error) {
        return Left(error);
      },
      (data) {
        return Right(data.map((e) => (e.toDomainModel() as D)).toList());
      },
    );
  }
}
