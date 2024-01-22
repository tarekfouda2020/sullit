import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/common/domain/entities/support_msg_params.dart';
import 'package:flutter_tdd/features/general/common/domain/models/support_msg.dart';
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart';

class SendSupportMessages extends UseCase<List<SupportMsg>, SupportMsgParams> {
  @override
  Future<List<SupportMsg>> call(SupportMsgParams params) async {
    var result = await getIt<CommonRepository>().sendSupportMsg(params);
    return result.fold((l) => [], (r) => r);
  }
}
