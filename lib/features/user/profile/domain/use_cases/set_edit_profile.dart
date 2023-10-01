import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/profile/domain/entities/profile_params.dart';
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart';

class SetEditProfile implements UseCase<UserDomainModel?, ProfileParams> {
  @override
  Future<UserDomainModel?> call(ProfileParams params) async {
    var result = await getIt<ProfileRepository>().updateProfile(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
