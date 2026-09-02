import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class VariantPriceParams {
  final int id;
  final int? resellerId;
  final int? branchId;
  final String variants;
  final UserLocationParams userLocationParams;

  VariantPriceParams({
    required this.id,
    this.resellerId,
    this.branchId,
    required this.variants,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  String paramToQuery() => "/$id/variant/price";

  Map<String, dynamic> toJson() => {
        "variants": variants,
        if (resellerId != null) "reseller_id": resellerId,
        if (branchId != null) "branch_id": branchId,
        ...userLocationParams.toJson(),
      };
}
