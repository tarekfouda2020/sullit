import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/sale/domain/entities/offers_params_widget.dart';
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart';

class GetVipOffers extends UseCase<List<ProductCard>, OffersParamsWidget> {
  @override
  Future<List<ProductCard>> call(OffersParamsWidget params) async {
    var result = await getIt<SaleRepository>().getVipOffers(params);
    return result.fold((l) => [], (r) => r);
  }
}
