import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_details_model/product_details_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_details_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetSkuProduct extends UseCase<ProductDetailsDomainModel?, String> {
  @override
  Future<ProductDetailsDomainModel?> call(String params) async {
    var result = await getIt<ProductsRepository>().scanProduct(params);
    return result.fold((l) => null, (r) => r);
  }
}
