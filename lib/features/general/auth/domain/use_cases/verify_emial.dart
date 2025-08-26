import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/code_verify_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class VerifyEmail implements UseCase<UserDomainModel?, CodeVerifyParams> {
  @override
  Future<UserDomainModel?> call(CodeVerifyParams params) async {
    var result = await getIt<AuthRepository>().emailVerify(params);
    return result.fold(
          (l) => null,
          (r) => r,
    );
  }
}
