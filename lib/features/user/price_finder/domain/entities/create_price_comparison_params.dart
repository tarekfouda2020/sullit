import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class CreatePriceComparisonParams {
  final int productId;
  final UserLocationParams userLocationParams;

  CreatePriceComparisonParams({
    required this.productId,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  String queryParams() {
    final parts = <String>['product_id=$productId'];
    userLocationParams.toJson().forEach((key, value) {
      parts.add('$key=$value');
    });
    return '?${parts.join('&')}';
  }
}
