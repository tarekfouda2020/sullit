import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/contact_us_params.dart';
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart';

class SetContactUs implements UseCase<bool, ContactUsParams> {
  @override
  Future<bool> call(ContactUsParams params) async {
    var result = await getIt<CommonRepository>().contactUs(params);
    return result.fold((l) => false, (r) => r);
  }
}
