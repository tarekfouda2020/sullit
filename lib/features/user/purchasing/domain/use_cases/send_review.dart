import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/send_review_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class SendReview extends UseCase<Reviews?, SendReviewParams> {
  @override
  Future<Reviews?> call(SendReviewParams params) async {
    var result = await getIt<PurchasingRepository>().sendReview(params);
    return result.fold((l) => null, (r) => r);
  }
}
