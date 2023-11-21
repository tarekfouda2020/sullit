import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/code_verify_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/entities/verify_phone_params.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetCodeVerify implements UseCase<String, CodeVerifyParams> {
  @override
  Future<String> call(CodeVerifyParams params) async {
    var result = await getIt<AuthRepository>().codeVerify(params);
    return result.fold(
          (l) => '',
          (r) => r,
    );
  }
}
