import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/home_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetHome extends UseCase<HomeDomainModel?, HomeParams> {
  @override
  Future<HomeDomainModel?> call(HomeParams params) async {
    var result = await getIt<ProductsRepository>().getHome(params);
    if (result.isRight()) {
      return result.fold((l) => null, (r) => r);
    }
    return null;
  }
}
