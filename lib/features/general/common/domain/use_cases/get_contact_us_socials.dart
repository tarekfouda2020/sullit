import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/general/common/domain/models/contact_us_socila_model.dart';
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart';

class GetContactUsSocials extends UseCase<List<ContactUsSocialModel>, NoParams> {
  @override
  Future<List<ContactUsSocialModel>> call( params) async {
    var result = await getIt<CommonRepository>().contactUsSocials();
    return result.fold((l) => [], (r) => r);
  }
}