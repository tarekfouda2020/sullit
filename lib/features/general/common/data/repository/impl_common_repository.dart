import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/general/common/data/data_sources/common_data_sources.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/contact_us_params.dart';
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:CommonRepository)
class ImplCommonRepository extends CommonRepository{
  var dataSources = getIt<CommonDataSources> ();
  @override
  Future<Either<Failure, String>> getTerms() async {
    return await dataSources.getTerms();
  }

  @override
  Future<Either<Failure, String>> getPrivacyPolicy() async {
    return await dataSources.getPrivacyPolicy();
  }

  @override
  Future<Either<Failure, bool>> contactUs(ContactUsParams params)async {
   return await dataSources.contactUs(params);
  }

  @override
  Future<Either<Failure, String>> supportPolicy() async{
    return await dataSources.supportPolicy();
  }
  @override
  Future<Either<Failure, String>> returnPolicy () async{
    return await dataSources.supportPolicy();
  }

  @override
  Future<Either<Failure, String>> getContactUs()async {
    return await dataSources.getContactUs();

  }

}