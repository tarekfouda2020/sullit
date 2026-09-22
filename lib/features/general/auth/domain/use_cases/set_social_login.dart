import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/social_login_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_login.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetSocialLogin extends UseCase<UserLogin?, SocialLoginParams> {
  @override
  Future<UserLogin?> call(SocialLoginParams params) async {
    var result = await getIt<AuthRepository>().socialLogin(params);
    if (result.isRight()) {
      return result.fold((l) => null, (r) => r);
    }
    return null;
  }
}
