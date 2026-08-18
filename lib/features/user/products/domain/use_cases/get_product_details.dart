import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/product_details_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetProductDetails
    extends UseCase<ProductDetailsDomainModel?, ProductDetailsParams> {
  @override
  Future<ProductDetailsDomainModel?> call(ProductDetailsParams params) async {
    var result = await getIt<ProductsRepository>().getProductDetails(params);
    return result.fold((l) => null, (r) => r);
  }
}
