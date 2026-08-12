import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/data_sources/instore_cart_data_source.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/models/instore_order_summary_model/instore_order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_create_order_params.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_order_preview_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: InstoreCartDataSource)
class ImplInstoreCartDataSource extends InstoreCartDataSource {
  @override
  Future<Either<Failure, InstoreOrderSummaryModel>> getOrderSummary(
    InstoreOrderPreviewParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.instoreOrderSummary,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: false,
      toJsonFunc: (json) => InstoreOrderSummaryModel.fromJson(json),
      responseKey: (data) => data['data'],
      errorFunc: (data) => data['msg'],
    );
    return GenericHttpImpl<InstoreOrderSummaryModel>().call(model);
  }

  @override
  Future<Either<Failure, OrderSummaryModel>> createOrder(
    InstoreCreateOrderParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.instoreOrders,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => OrderSummaryModel.fromJson(json),
      responseKey: (data) => data['data'],
      errorFunc: (data) => data['msg'],
    );
    return GenericHttpImpl<OrderSummaryModel>().call(model);
  }
}
