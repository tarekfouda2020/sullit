class UploadedFilesParams {
  String? search;

  String? sort;
  String? extension;

  UploadedFilesParams({
     this.search,
     this.sort,
     this.extension,
  });
  String _getSearch(){
    if(search != null){
      return '?search=$search';
    }else {
      return '';
    }
  }
  String _getSort (){
    if(sort != null){
      return '&sort=$sort';
    }else {
      return '';
    }
  }
  String _getExtension(){
    if(extension != null){
      return '&extension=$extension';
    }else {
      return '';
    }
  }
  String toQuery ()=> '${_getSearch()}${_getSort()}${_getExtension()}';

}
