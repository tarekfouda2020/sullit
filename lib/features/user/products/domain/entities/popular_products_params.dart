import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class PopularProductsParams {
  final int? id;
  final int currentPage;
  final int pageSize;
  final bool refresh;
  final UserLocationParams userLocationParams;

  PopularProductsParams({
    this.id,
    this.currentPage = 1,
    this.pageSize = 12,
    required this.refresh,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  String paramToQuery() => "/$id?paginate=$pageSize&page=$currentPage";

  Map<String, dynamic> toJson() => userLocationParams.toJson();
}
