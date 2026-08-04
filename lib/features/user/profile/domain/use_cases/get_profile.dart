import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart';

class GetProfile extends UseCase<UserDomainModel?, bool> {
  @override
  Future<UserDomainModel?> call(bool params) async {
    var result = await getIt<ProfileRepository>().getProfile(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
