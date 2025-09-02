import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/transaction_model/transaction_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/loyalty_points_data_source.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/models/loyalty_points_balance_model/loyalty_points_balance_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoyaltyPointsDataSource)
class ImplLoyaltyPointsDataSource extends LoyaltyPointsDataSource {
  @override
  Future<Either<Failure, LoyaltyPointsBalanceModel>> getLoyaltyPointsBalance(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.loyaltyPointsBalance,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => LoyaltyPointsBalanceModel.fromJson(json),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<LoyaltyPointsBalanceModel>().call(model);
  }

  @override
  Future<Either<Failure, List<TransactionModel>>> getTransactions(GenericPaginateParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.loyaltyPointsTransactions+params.paramsToQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: params.refresh,
      responseKey: (data) => data['data']['transactions'],
      toJsonFunc: (json) => List<TransactionModel>.from(
        json.map((e) => TransactionModel.fromJson(e)),
      ),
    );
    return await GenericHttpImpl<List<TransactionModel>>()(model);
  }

}