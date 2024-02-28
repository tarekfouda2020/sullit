import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';

abstract class BaseRepository {
  Future<Either<Failure, bool>> logOut();

  Future<Either<Failure, List<Shop>>> getFollowing(bool params);
}
