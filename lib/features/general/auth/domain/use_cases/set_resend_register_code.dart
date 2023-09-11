import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetResendRegisterCode extends UseCase<String, String> {
  @override
  Future<String> call(String params) async {
    var result = await getIt<AuthRepository>().resendRegisterCode(params);
    return result.fold((l) => "", (r) => r);
  }
}
