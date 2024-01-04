import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart';

class GetContactUs extends UseCase<String, NoParams> {
  @override
  Future<String> call(NoParams params) async {
    var result = await getIt<CommonRepository>().getContactUs();
    return result.fold((l) => "", (r) => r);
  }
}
