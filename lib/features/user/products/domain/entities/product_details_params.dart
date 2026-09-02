import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class ProductDetailsParams {
  final int id;
  final bool refresh;
  final int? branchId;
  final UserLocationParams userLocationParams;

  ProductDetailsParams({
    required this.id,
    this.refresh = true,
    this.branchId,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  Map<String, dynamic> toJson() => {
        if (branchId != null) "branch_id": branchId,
        ...userLocationParams.toJson(),
      };

  String paramToQuery() {
    var query = "/$id";
    if (branchId != null) {
      query = "$query?branch_id=$branchId";
    }
    return query;
  }
}
