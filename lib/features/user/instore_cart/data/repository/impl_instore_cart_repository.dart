import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/data_sources/instore_cart_data_source.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/models/instore_order_summary_model/instore_order_summary_model.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_create_order_params.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_order_preview_params.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/repository/instore_cart_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: InstoreCartRepository)
class ImplInstoreCartRepository extends InstoreCartRepository with ModelToDomain {
  final InstoreCartDataSource _dataSource = getIt<InstoreCartDataSource>();

  @override
  Future<Either<Failure, InstoreOrderSummaryModel>> getOrderSummary(
    InstoreOrderPreviewParams params,
  ) async {
    return _dataSource.getOrderSummary(params);
  }

  @override
  Future<Either<Failure, OrderSummaryDomainModel>> createOrder(
    InstoreCreateOrderParams params,
  ) async {
    final result = await _dataSource.createOrder(params);
    return toDomainResult<OrderSummaryDomainModel, OrderSummaryModel>(result);
  }
}
