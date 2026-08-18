import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/base/domain/models/lang_domain_model.dart';
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';

class GetLanguages extends UseCase<List<LangDomainModel>, bool> {
  @override
  Future<List<LangDomainModel>> call(bool params) async {
    var result = await getIt<BaseRepository>().getLanguages(params);
    return result.fold((l) => [], (r) => r);
  }
}
