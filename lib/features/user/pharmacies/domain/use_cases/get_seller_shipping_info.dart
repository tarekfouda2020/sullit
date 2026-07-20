
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/seller_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class GetSellerShippingInfo
    extends UseCase<SellerShipping?, SellerShippingInfoParams> {
  @override
  Future<SellerShipping?> call(SellerShippingInfoParams params) async {
    var result = await getIt<PharmaciesRepository>().getShippingInfo(params);
    return result.fold((l) => null, (r) => r);
  }
}