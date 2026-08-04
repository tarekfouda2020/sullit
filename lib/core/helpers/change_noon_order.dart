import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/change_noon_order_params.dart';

import '../errors/failures.dart';

class ChangeNoonOrder {
  ChangeNoonOrder._();

  static ChangeNoonOrder instance = ChangeNoonOrder._();

  final Dio _dio = Dio(
    BaseOptions(
      headers: {
        // "X-API-Key" : "SstJi9Ho0EHG2t7kQVSz7nA2hOeL3iiwVxHxb0Njk60QJ0LfmvoXoOsimw1zQC7VugHXiIRRMnWyU6f0uHcEcLlco5Eujqbd5pTwDlfBXpacuRI4m4AAj61NwM0B7Ihk"
      },
    ),
  )..interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
      responseHeader: true,
      logPrint: (data) => log(
            data.toString(),
          )));

  Future<Either<Failure, bool>> changeStatus(
      ChangeNoonOrderParams params) async {
    try {
      const url =
          'https://staging.mushrifcoop.com/api/v3/webhooks/shipping/noon';
      final response = await _dio.post(url, data: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Right(true);
      }
      return Left(ServerFailure());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
