import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/restaurants/data/data_sources/restaurants_data_source.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/params/restaurant_create_order_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RestaurantsDataSource)
class ImplRestaurantsDataSource extends RestaurantsDataSource {
  @override
  Future<Either<Failure, OrderSummaryModel>> createOrder(
    RestaurantCreateOrderParams params,
  ) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.createRestaurantOrder,
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
