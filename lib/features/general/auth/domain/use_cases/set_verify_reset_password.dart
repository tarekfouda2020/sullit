import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_reset_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetVerifyResetPassword
    extends UseCase<String?, VerifyResetPasswordParams> {
  @override
  Future<String?> call(VerifyResetPasswordParams params) async {
    var result = await getIt<AuthRepository>().verifyResetPassword(params);
    return result.fold((l) => null, (r) => r);
  }
}
