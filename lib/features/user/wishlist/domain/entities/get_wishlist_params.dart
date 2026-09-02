import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class GetWishlistParams {
  final bool refresh;
  final UserLocationParams userLocationParams;

  GetWishlistParams({
    this.refresh = true,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  Map<String, dynamic> toJson() => userLocationParams.toJson();
}
