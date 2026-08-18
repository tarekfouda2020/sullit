import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart';

class SetEditProfileEmail implements UseCase<bool, String> {
  @override
  Future<bool> call(String param) async {
    var result = await getIt<ProfileRepository>().updateProfileEmail(param);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
