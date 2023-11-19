import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/http/models/download_request_model.dart';
import 'package:injectable/injectable.dart';

import '../../../errors/failures.dart';
import '../../../helpers/di.dart';
import '../../../helpers/loading_helper.dart';
import '../../models/request_body_model.dart';
import '../source/dio_helper.dart';

@lazySingleton
class Download extends DioHelper {

  Future<Either<ServerFailure, Response>> download(DownloadRequestModel params) async {
    getIt<LoadingHelper>().showLoadingDialog();
    try {
      var response = await dio.download(
        params.url,
        params.localPath
      );
      getIt<LoadingHelper>().dismissDialog();
      return Right(response);
    } on DioError catch (e) {
      getIt<LoadingHelper>().dismissDialog();
      CustomToast.showSimpleToast(msg: "Check Server");
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, Response>> call(RequestBodyModel params) {
    throw UnimplementedError();
  }
}
