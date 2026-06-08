part of 'terms_imports.dart';

class TermsController {
  final GenericBloc<String> termsCubit = GenericBloc("");
  TermsController() {
    getTerms();
  }
  Future<void> getTerms() async {
    await GetTerms().call(NoParams()).then(
          (value) => termsCubit.onUpdateData(value),
        );
  }
}
