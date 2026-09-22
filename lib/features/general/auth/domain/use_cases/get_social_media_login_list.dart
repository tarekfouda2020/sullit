import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/social_media_login.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class GetSocialMediaLoginList
    implements UseCase<List<SocialMediaLogin>, bool> {
  @override
  Future<List<SocialMediaLogin>> call(bool param) async {
    final result =
        await getIt<AuthRepository>().getSocialMediaLoginList(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
