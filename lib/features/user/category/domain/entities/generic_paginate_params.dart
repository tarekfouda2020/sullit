class GenericPaginateParams {
  int pageSize;
  int currentPage;
  bool refresh = true;

  GenericPaginateParams({
    required this.pageSize,
    required this.refresh,
    required this.currentPage,
  });

  String paramsToQuery() => "?paginate=$pageSize&page=$currentPage";

  Map<String,dynamic> toJson() =>{
    "page" : currentPage,
    "paginate" : pageSize,
  };

}
