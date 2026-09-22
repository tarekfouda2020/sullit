import '../../../../../core/helpers/di.dart';
import '../../../../../core/usecases/use_case.dart';
import '../entities/set_new_password_params.dart';
import '../repository/profile_repository.dart';

class PasswordSetRequest implements UseCase<String?, SetNewPasswordParams> {
  @override
  Future<String?> call(SetNewPasswordParams params) async {
    final result = await getIt<ProfileRepository>().passwordSetRequest(params);

    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
