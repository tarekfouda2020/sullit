import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/sale_details.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';

class GetAllDealsProducts implements UseCase<SaleDetailsDomainModel?, int> {
  @override
  Future<SaleDetailsDomainModel?> call(int param) async {
    var result = await getIt<SaleRepository>().getAlFlashDealProducts(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
