import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/common/domain/use_cases/get_privacy_policy.dart';

class PrivacyController {
  final GenericBloc<String> privacyBloc = GenericBloc("");
  PrivacyController() {
    getPrivacy();
  }
  Future<void> getPrivacy() async {
    await GetPrivacyPolicy().call(NoParams()).then(
          (value) => privacyBloc.onUpdateData(value),
        );
  }
}
