import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';

class GetNewArrival extends UseCase<List<Product>, bool> {
  @override
  Future<List<Product>> call(bool params) async {
    var result = await getIt<SaleRepository>().getNewArrival(params);
    return result.fold((l) => [], (r) => r);
  }
}
