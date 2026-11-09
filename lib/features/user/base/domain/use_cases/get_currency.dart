import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart';

class GetCurrency extends UseCase<String?, NoParams> {
  @override
  Future<String?> call(NoParams params) async {
    final result = await getIt<BaseRepository>().getCurrency();
    return result.fold((l) => null, (symbol) => symbol);
  }
}
