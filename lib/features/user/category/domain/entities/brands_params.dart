class BrandsParams {
  int paginate;

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
  });

  String toQuery() {
    String url = "?paginate=$paginate&page=$page";
    if(keyword!=null && keyword?.isNotEmpty == true){
      url = "$url&keyword=$keyword";
    }
    if(categoryId != null){
      url = "$url&category_id=$categoryId";
    }
    return url;
  }
}