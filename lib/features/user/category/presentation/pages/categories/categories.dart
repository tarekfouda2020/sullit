part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  final HomeController homeController;

  const Categories({Key? key, required this.homeController}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final CategoriesController categoriesController = CategoriesController();

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
              child: GenericListView(
                type: ListViewType.gridApi,
                onRefresh: categoriesController.getCategories,
                params: [context],
                cubit: categoriesController.categoriesCubit,
                runSpacing: 15.r,
                spacing: 15.r,
                gridCrossCount: 2,
                gridItemHeight: 150.spMin,
                padding: Dimens.standardPadding,
                itemBuilder: (_, index, item) =>
                    BuildCategoryItem(categoryModel: item),
                loadingWidget: const BuildLoadingCategoriesView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
