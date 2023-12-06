import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart';

class SetDeleteAccount extends UseCase<bool, NoParams> {
  @override
  Future<bool> call(NoParams params) async {
    var result = await getIt<AuthRepository>().deleteAccount(params);
    return result.fold((l) => false, (r) => r);
  }
}
