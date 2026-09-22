import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart';
import '../entities/set_new_password_params.dart';

class PasswordSet implements UseCase<String?, SetNewPasswordParams> {
  @override
  Future<String?> call(SetNewPasswordParams params) async {
    final result = await getIt<ProfileRepository>().passwordSet(params);

    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
