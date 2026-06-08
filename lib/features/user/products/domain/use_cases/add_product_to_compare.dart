import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';

class AddProductToCompare implements UseCase<int, ProductsTableData> {
  @override
  Future<int> call(ProductsTableData param) async {
    return await getIt<ComparedProductsDb>().insertItem(param);
  }
}
