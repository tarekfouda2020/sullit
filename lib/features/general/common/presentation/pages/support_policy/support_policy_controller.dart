part of 'support_policy_imports.dart';

class SupportPolicyController {
  final GenericBloc<String> supportPrivacyBloc = GenericBloc("");
  SupportPolicyController() {
    getSupportPrivacy();
  }
  Future<void> getSupportPrivacy() async {
    await GetSupportPolicy().call(NoParams()).then(
          (value) => supportPrivacyBloc.onUpdateData(value),
        );
  }
}
