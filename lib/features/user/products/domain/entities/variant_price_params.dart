class VariantPriceParams {
  final int id;
  final int? resellerId;
  final int? branchId;
  final String variants;

  VariantPriceParams({
    required this.id,
    this.resellerId,
    this.branchId,
    required this.variants,
  });

  String paramToQuery() => "/$id/variant/price";

  Map<String, dynamic> toJson() => {
        "variants": variants,
        if (resellerId != null) "reseller_id": resellerId,
        if (branchId != null) "branch_id": branchId,
      };
}
