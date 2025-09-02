import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/contact_us_params.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/support_msg_params.dart';
import 'package:flutter_tdd/features/general/common/domain/models/contact_us_socila_model.dart';
import 'package:flutter_tdd/features/general/common/domain/models/support_msg.dart';

abstract class CommonRepository {
  Future<Either<Failure, String>> getTerms();

  Future<Either<Failure, String>> getPrivacyPolicy();

  Future<Either<Failure, bool>> contactUs(ContactUsParams params);

  Future<Either<Failure, String>> supportPolicy();

  Future<Either<Failure, String>> returnPolicy();

  Future<Either<Failure, String>> getContactUs();

  Future<Either<Failure, List<SupportMsg>>> getSupportMessages();

  Future<Either<Failure, List<ContactUsSocialModel>>> contactUsSocials();

  Future<Either<Failure, List<SupportMsg>>> sendSupportMsg(
      SupportMsgParams params);
}
