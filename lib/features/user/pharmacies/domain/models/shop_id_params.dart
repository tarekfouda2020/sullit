import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class ShopIdParams {
  final int shopId;
  final bool refresh;
  final UserLocationParams userLocationParams;

  ShopIdParams({
    required this.shopId,
    this.refresh = true,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  Map<String, dynamic> toJson() => userLocationParams.toJson();
}
