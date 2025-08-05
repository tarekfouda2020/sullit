import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/seller_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/seller_product_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetSellerProducts extends UseCase<SellerProductDomainModel?, SellerProductsParams> {
  @override
  Future<SellerProductDomainModel?> call(SellerProductsParams params) async {
    var result = await getIt<ProductsRepository>().sellerProducts(params);
    return result.fold((l) => null, (r) => r);
  }
}
