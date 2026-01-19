


import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';

abstract class BestSellersRepository{

  Future<Either<Failure, List<Shop>>> getShop(SearchResultParams param);


}