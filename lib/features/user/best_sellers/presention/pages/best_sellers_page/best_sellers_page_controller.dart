part of 'best_sellers_page_imports.dart';

class BestSellersPageController {

  final TextEditingController searchTxtController = TextEditingController();
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);




  void clearSearchField(){
    searchTxtController.clear();
    showClearIcon.onUpdateData(false);
  }

  void whileWriting(String value){
    if(value.isNotEmpty){
      showClearIcon.onUpdateData(true);
    }else{
      showClearIcon.onUpdateData(false);
    }
  }


}