part of 'categories_imports.dart';

class CategoriesController {
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<List<Category>> categoriesCubit = GenericBloc([]);
  final GenericBloc<List<Category>> sideSubCatsCubit = GenericBloc([]);
  Category? mainCategory;

  CategoriesController() {
    getCategories();
  }

  void getCategories({bool refresh = true}) async {
    var result = await GetCategories().call(refresh);
    categoriesCubit.onUpdateData(result);
    if(result.isNotEmpty){
      result.first.isSelected = true;
      mainCategory=result.first;
      // getSideSubCategories(result.first.id, result.first.name);
    }else{
      sideSubCatsCubit.onUpdateData([]);
    }

  }

  Future<void> getSideSubCategories(int catId, String catName) async {
    var result = await GetSideSubCats().call(catId);
    if (result.isEmpty) {
      result.add(_insertedItem(catId, catName));
    }
    sideSubCatsCubit.onUpdateData(result);
  }

  void onSelectMainCat(Category categoryModel) {
    categoriesCubit.state.data.map((e) => e.isSelected = false).toList();
    categoryModel.isSelected = true;
    categoriesCubit.onUpdateData(categoriesCubit.state.data);
    sideSubCatsCubit.onUpdateToInitState([]);
    getSideSubCategories(categoryModel.id, categoryModel.name);
    mainCategory=categoryModel;
  }

  Category _insertedItem(int catId, String catName) {
    return Category(
      id: catId,
      name: catName,
      icon: "",
      digital: 0,
      orderLevel: 0,
      slug: '',
      subCats: [],
      banner: "",
    );
  }


  Future<void> routeToSearch(BuildContext context)async{
   await AutoRouter.of(context).push(
      SearchRoute(
        searchText: searchController.text,
      ),
    );
   searchController.clear();
  }



// void onSelectSubCat(Category subCatModel) {
//   if (selectedSideSubCat == null) {
//     onChangeSubCat(subCatModel);
//   } else {
//     if (selectedSideSubCat?.id == subCatModel.id) {
//       subCatModel.isSideCatSelected = !subCatModel.isSideCatSelected;
//       sideSubCatsCubit.onUpdateData(sideSubCatsCubit.state.data);
//     } else {
//       sideSubCatsCubit.state.data
//           .map((e) => e.isSideCatSelected = false)
//           .toList();
//       onChangeSubCat(subCatModel);
//     }
//   }
// }

// void onChangeSubCat(Category subCatModel) {
//   selectedSideSubCat = subCatModel;
//   subCatsCubit.onUpdateToInitState([]);
//   getSideSubCategories(subCatModel.id)
//       .then((value) => subCatsCubit.onUpdateData(value));
//   subCatModel.isSideCatSelected = true;
//   sideSubCatsCubit.onUpdateData(sideSubCatsCubit.state.data);
// }
// void onSearchByName(String value) {
//   if (value.isEmpty) {
//     categoriesCubit.onUpdateData(allCats);
//   } else {
//     var burialList = allCats
//         .where((element) =>
//             element.name.toLowerCase().contains(value.toLowerCase()))
//         .toList();
//     categoriesCubit.onUpdateData(burialList);
//   }
// }
}
