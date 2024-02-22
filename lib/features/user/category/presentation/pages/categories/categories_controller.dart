part of 'categories_imports.dart';

class CategoriesController {
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<List<Category>> categoriesCubit = GenericBloc([]);
  final GenericBloc<List<Category>> sideSubCatsCubit = GenericBloc([]);
  final GenericBloc<List<Category>> subCatsCubit = GenericBloc([]);
  Category? selectedSideSubCat;

  // late List<Category> allCats;

  CategoriesController() {
    // getCategories(refresh: false);
    getCategories();
  }

  void getCategories({bool refresh = true}) async {
    var result = await GetCategories().call(refresh);
    result.first.isSelected = true;
    categoriesCubit.onUpdateData(result);
    getSideSubCategories(result.first.id)
        .then((value) => sideSubCatsCubit.onUpdateData(value));
    // allCats = result;
  }

  Future<List<Category>> getSideSubCategories(int catId) async {
    print("============${catId}");
    var result = await GetSideSubCats().call(catId);
    return result;
  }

  void onSelectMainCat(Category categoryModel) {
    categoriesCubit.state.data.map((e) => e.isSelected = false).toList();
    categoryModel.isSelected = true;
    categoriesCubit.onUpdateData(categoriesCubit.state.data);
    sideSubCatsCubit.onUpdateToInitState([]);
    getSideSubCategories(categoryModel.id)
        .then((value) => sideSubCatsCubit.onUpdateData(value));
  }

  void onSelectSubCat(Category subCatModel) {
    if (selectedSideSubCat == null) {
      onChangeSubCat(subCatModel);
    } else {
      if (selectedSideSubCat?.id == subCatModel.id) {
        subCatModel.isSideCatSelected = !subCatModel.isSideCatSelected;
        sideSubCatsCubit.onUpdateData(sideSubCatsCubit.state.data);
      } else {
        sideSubCatsCubit.state.data
            .map((e) => e.isSideCatSelected = false)
            .toList();
        onChangeSubCat(subCatModel);
      }
    }
  }

  void onChangeSubCat(Category subCatModel) {
    selectedSideSubCat = subCatModel;
    subCatsCubit.onUpdateToInitState([]);
    getSideSubCategories(subCatModel.id)
        .then((value) => subCatsCubit.onUpdateData(value));
    subCatModel.isSideCatSelected = true;
    sideSubCatsCubit.onUpdateData(sideSubCatsCubit.state.data);
  }
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
