import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/data_source/loyalty_points_data_source.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/models/loyalty_points_balance_model/loyalty_points_balance_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/data/models/transactions_model/transactions_model.dart';
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
  Future<Either<Failure, List<TransactionsModel>>> getTransactions(GenericPaginateParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.loyaltyPointsTransactions+params.paramsToQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: params.refresh,
      responseKey: (data) {
        // Debug: Print the entire response to understand the structure
        print('Loyalty Points API Response: $data');
        
        // Handle potential null values safely
        final transactions = data['data']?['transactions'];
        print('Transactions from response: $transactions');
        
        if (transactions == null) {
          print('Transactions is null, returning empty list');
          return [];
        }
        
        if (transactions is List) {
          print('Transactions is a list with ${transactions.length} items');
        } else {
          print('Transactions is not a list, type: ${transactions.runtimeType}');
        }
        
        return transactions;
      },
      toJsonFunc: (json) {
        // Debug: Print the json parameter
        print('toJsonFunc called with: $json');
        print('JSON type: ${json.runtimeType}');
        
        // Handle empty or null json safely
        if (json == null) {
          print('JSON is null, returning empty list');
          return <TransactionsModel>[];
        }
        
        if (json.isEmpty) {
          print('JSON is empty, returning empty list');
          return <TransactionsModel>[];
        }
        
        try {
          final result = List<TransactionsModel>.from(
            json.map((e) => TransactionsModel.fromJson(e)),
          );
          print('Successfully created ${result.length} TransactionsModel instances');
          return result;
        } catch (e) {
          print('Error creating TransactionsModel instances: $e');
          return <TransactionsModel>[];
        }
      },
      errorFunc: (data) => data["msg"] ?? "Unknown error occurred",
    );
    return await GenericHttpImpl<List<TransactionsModel>>().call(model);
  }

}