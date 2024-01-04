import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/contact_us_params.dart';

abstract class CommonRepository {
  Future<Either<Failure, String>> getTerms ();
  Future<Either<Failure, String>> getPrivacyPolicy ();
  Future<Either<Failure, bool>> contactUs (ContactUsParams params);
  Future<Either<Failure, String>> supportPolicy ();
  Future<Either<Failure, String>> returnPolicy ();
  Future<Either<Failure, String>> getContactUs ();

}