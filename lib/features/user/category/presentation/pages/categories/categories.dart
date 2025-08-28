part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  final HomeController homeController;

  const Categories({Key? key, required this.homeController}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late CategoriesController categoriesController;

  @override
  void initState() {
    categoriesController = CategoriesController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: BuildHomeAppBar(homeController: widget.homeController),
        body: Column(
          children: [
            Gaps.vGap10,
            BuildCategorySearchView(categoriesController: categoriesController),
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 10,start: 15,end: 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: BlocBuilder<GenericBloc<List<Category>>,
                          GenericState<List<Category>>>(
                        bloc: categoriesController.categoriesCubit,
                        builder: (context, state) {
                          if (state is GenericUpdateState) {
                            return ListView.builder(
                              itemBuilder: (_, index) => BuildCategorySideItem(
                                categoryModel: state.data[index],
                                categoriesController: categoriesController,
                              ),
                              itemCount: state.data.length,
                            );
                          } else {
                            return const BuildLoadingSideCategories();
                          }
                        },
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: BlocBuilder<GenericBloc<List<Category>>,
                          GenericState<List<Category>>>(
                        bloc: categoriesController.sideSubCatsCubit,
                        builder: (context, state) {
                          if (state is GenericUpdateState) {
                            return ListView.builder(
                              itemBuilder: (_, index) =>
                                  BuildSubCategorySideItem(
                                categoriesController: categoriesController,
                                subCategoryModel: state.data[index],
                                length: state.data.length,
                              ),
                              itemCount: state.data.length,
                            );
                          } else {
                            return const BuildLoadingSideSubCategories();
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
