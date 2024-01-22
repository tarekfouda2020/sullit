import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/common/domain/models/support_msg.dart';
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart';

class GetSupportMessages extends UseCase<List<SupportMsg>, NoParams> {
  @override
  Future<List<SupportMsg>> call(NoParams params) async {
    var result = await getIt<CommonRepository>().getSupportMessages();
    return result.fold((l) => [], (r) => r);
  }
}
