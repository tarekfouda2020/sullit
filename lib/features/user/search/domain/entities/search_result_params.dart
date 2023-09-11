class SearchResultParams {
  String searchTxt;
  bool refresh;

  SearchResultParams({
    required this.searchTxt,
    this.refresh = true,
  });

  String paramToQuery() => "?keyword=$searchTxt";
}
