import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/base/data/models/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/user/base/domain/models/lang_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';

abstract class BaseRepository {
  Future<Either<Failure, bool>> logOut();

  Future<Either<Failure, List<MerchantShopModel>>> getFollowing(bool params);

  Future<Either<Failure, List<LangDomainModel>>> getLanguages(bool params);
}
