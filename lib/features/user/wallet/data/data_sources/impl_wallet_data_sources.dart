// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_model/wallet_model.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_transaction_model/wallet_transaction_model.dart';
import 'package:flutter_tdd/features/user/wallet/data/models/wallet_types_model/wallet_types_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/entites/recharge_wallet_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WalletDataSources)
class ImplWalletDataSources extends WalletDataSources {
  @override
  Future<Either<Failure, WalletModel>> getMyWallet(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getMyWallet,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      refresh: param,
      toJsonFunc: (data) => WalletModel.fromJson(data),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<WalletModel>().call(model);
  }

  @override
  Future<Either<Failure, List<WalletTypesModel>>> getWalletTypes(
      bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getWalletTypes,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      toJsonFunc: (json) => List<WalletTypesModel>.from(
        json.map((e) => WalletTypesModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<List<WalletTypesModel>>().call(model);
  }

  @override
  Future<Either<Failure, String>> rechargeWallet(
      RechargeWalletParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.rechargeWallet,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: param.toJson(),
      responseKey: (data) => data["data"]["transaction_url"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, List<WalletTransactionModel>>> walletTransactions(
      GenericPaginateParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.walletTransactions + param.paramsToQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      toJsonFunc: (json) => List<WalletTransactionModel>.from(
        json.map((e) => WalletTransactionModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["transactions"],
    );
    return await GenericHttpImpl<List<WalletTransactionModel>>().call(model);
  }
}
