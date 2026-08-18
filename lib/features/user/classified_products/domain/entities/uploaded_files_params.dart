class UploadedFilesParams {
  String? search;

  String? sort;
  String? type;

  UploadedFilesParams({
    this.search,
    this.sort,
    this.type,
  });
  String _getSearch() {
    if (search != null) {
      return '?search=$search';
    } else {
      return '';
    }
  }

  String _getSort() {
    if (sort != null) {
      return '&sort=$sort';
    } else {
      return '';
    }
  }

  String _getExtension() {
    if (type != null) {
      return '&type=$type';
    } else {
      return '';
    }
  }

  String toQuery() => '${_getSearch()}${_getSort()}${_getExtension()}';
}
