class CustomerProductsParams {
  final String? sortBy;
  final String? condition;
  final int? catId;
  final int? brandId;
  final int currentPage;
  final int pageSize;
  final bool refresh;

  CustomerProductsParams(
      {this.sortBy,
      this.condition,
      this.catId,
      this.brandId,
      this.currentPage = 1,
      this.pageSize = 12,
      this.refresh = true});

  Map<String, dynamic> toJson() => {
        "paginate": pageSize,
        "page": currentPage,
        "category_id": catId,
        "brand_id": brandId,
        "sort_by": sortBy,
        "condition": condition,
      };
}
