import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/base/data/models/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';

abstract class BaseDataSources {
  Future<Either<Failure, bool>> logOut();

  Future<Either<Failure, List<ShopModel>>> getFollowing(bool params);

  Future<Either<Failure, List<LangModel>>> getLanguages(bool params);
}
