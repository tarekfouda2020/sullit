import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/send_review_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';

abstract class PurchasingRepository {
  Future<Either<Failure, List<Orders>>> getPurchaseHistory(GenericPaginateParams param);
  Future<Either<Failure, Orders>> trackOrder (String param);
  Future<Either<Failure, Orders>> getOrderDetails (GenericParams param);
  Future<Either<Failure, Reviews>> sendReview (SendReviewParams param);
}