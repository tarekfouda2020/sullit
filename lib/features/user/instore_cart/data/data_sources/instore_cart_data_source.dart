import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/models/instore_order_summary_model/instore_order_summary_model.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_create_order_params.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_order_preview_params.dart';

abstract class InstoreCartDataSource {
  Future<Either<Failure, InstoreOrderSummaryModel>> getOrderSummary(
    InstoreOrderPreviewParams params,
  );

  Future<Either<Failure, OrderSummaryModel>> createOrder(
    InstoreCreateOrderParams params,
  );
}
