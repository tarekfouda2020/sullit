part of 'categories_imports.dart';

class CategoriesController {
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<List<Category>> categoriesCubit = GenericBloc([]);
  late List<Category> allCats;

  void getCategories(BuildContext context, {bool refresh = true}) async {
    var result = await GetCategories().call(refresh);
    categoriesCubit.onUpdateData(result);
    allCats = result;
  }

  void onSearchByName(String value) {
    if (value.isEmpty) {
      categoriesCubit.onUpdateData(allCats);
    } else {
      var burialList = allCats
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
      categoriesCubit.onUpdateData(burialList);
    }
  }
}
