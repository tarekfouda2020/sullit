class BrandsParams {
  int paginate;
  final int? shopId;
  int page;

  final String? keyword;
  final int? categoryId;

  bool refresh = true;

  BrandsParams({
    required this.paginate,
    required this.refresh,
    required this.page,
    this.keyword,
    this.categoryId,
    this.shopId,
  });

  String toQuery() {
    String url = "?paginate=$paginate&page=$page";
    if (keyword != null && keyword?.isNotEmpty == true) {
      url = "$url&keyword=$keyword";
    }
    if (categoryId != null) {
      url = "$url&category_id=$categoryId";
    }
    if (shopId != null) {
      url = "$url&seller_id=$shopId";
    }
    return url;
  }
}
