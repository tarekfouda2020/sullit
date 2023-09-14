import 'package:flutter_tdd/features/user/customers_products/domain/repository/cus_products_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CusProductRepository)
class ImplCusProductsRepository extends CusProductRepository {}