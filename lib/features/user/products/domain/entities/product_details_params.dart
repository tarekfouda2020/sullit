class ProductDetailsParams {
  final int id;
  final bool refresh;
  final int? branchId;

  ProductDetailsParams({
    required this.id,
    this.refresh = true,
    this.branchId,
  });

  String paramToQuery() {
    var query = "/$id";
    if (branchId != null) {
      query = "$query?branch_id=$branchId";
    }
    return query;
  }
}
