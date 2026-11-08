import '../../../../../core/helpers/di.dart';
import '../../../../../core/usecases/use_case.dart';
import '../repository/base_repository.dart';

class IsCountryAvailable extends UseCase<bool?, String> {
  @override
  Future<bool?> call(String countryCode) async {
    final result = await getIt<BaseRepository>().getAvailableCountry();
    return result.fold(
      (l) => null,
      (countries) => countries.any(
        (c) => c.code.toLowerCase() == countryCode.toLowerCase(),
      ),
    );
  }
}
