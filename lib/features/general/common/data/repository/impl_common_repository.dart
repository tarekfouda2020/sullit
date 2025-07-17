import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/general/common/data/data_sources/common_data_sources.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/contact_us_params.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/support_msg_params.dart';
import 'package:flutter_tdd/features/general/common/domain/models/contact_us_socila_model.dart';
import 'package:flutter_tdd/features/general/common/domain/models/support_msg.dart';
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommonRepository)
class ImplCommonRepository extends CommonRepository with ModelToDomain {
  var dataSources = getIt<CommonDataSources>();

  @override
  Future<Either<Failure, String>> getTerms() async {
    return await dataSources.getTerms();
  }

  @override
  Future<Either<Failure, String>> getPrivacyPolicy() async {
    return await dataSources.getPrivacyPolicy();
  }

  @override
  Future<Either<Failure, bool>> contactUs(ContactUsParams params) async {
    return await dataSources.contactUs(params);
  }

  @override
  Future<Either<Failure, String>> supportPolicy() async {
    return await dataSources.supportPolicy();
  }

  @override
  Future<Either<Failure, String>> returnPolicy() async {
    return await dataSources.supportPolicy();
  }

  @override
  Future<Either<Failure, String>> getContactUs() async {
    return await dataSources.getContactUs();
  }

  @override
  Future<Either<Failure, List<SupportMsg>>> getSupportMessages() async {
    var result = await dataSources.getSupportMessages();
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<SupportMsg>>> sendSupportMsg(
      SupportMsgParams params) async {
    var result = await dataSources.sendSupportMsg(params);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, List<ContactUsSocialModel>>> contactUsSocials() async {
    var result = await dataSources.contactUsSocials();
    return toDomainResultList(result);
  }
}
