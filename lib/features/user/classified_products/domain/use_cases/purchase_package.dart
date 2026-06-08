import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/purchase_package_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/purchase_package_response.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetPurchasePackage
    implements UseCase<PurchasePackageResponse?, PurchasePackageParams> {
  @override
  Future<PurchasePackageResponse?> call(PurchasePackageParams params) async {
    var result =
        await getIt<ClassifiedProductsRepository>().purchasePackage(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
