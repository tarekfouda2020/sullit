part of 'return_policy_import.dart';

class ReturnPolicyController {
  final GenericBloc<String> returnPolicyBloc = GenericBloc("");
  ReturnPolicyController() {
    getPrivacy();
  }
  Future<void> getPrivacy() async {
    await GetReturnPolicy().call(NoParams()).then(
          (value) => returnPolicyBloc.onUpdateData(value),
        );
  }
}
