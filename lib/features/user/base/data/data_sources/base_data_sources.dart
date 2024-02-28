import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';

abstract class BaseDataSources {
  Future<Either<Failure, bool>> logOut ();

  Future<Either<Failure, List<ShopModel>>> getFollowing(bool params);
}