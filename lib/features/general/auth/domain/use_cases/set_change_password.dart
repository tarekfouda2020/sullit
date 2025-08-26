import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/change_password_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetChangePassword extends UseCase<String, ChangePasswordParams> {
  @override
  Future<String> call(ChangePasswordParams params) async {
    var result = await getIt<AuthRepository>().changePassword(params);
    return result.fold((l) => "", (r) => r);
  }
}
