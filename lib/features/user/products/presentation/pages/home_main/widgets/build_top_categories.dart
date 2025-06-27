part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  final List<Category> categories;

  const BuildTopCategories({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal15PX,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap15,
          // BuildCustomHeaderTitle(
          //   title: tr("categories"),
          //   onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
          // ),
          const CategoriesHeaderWidget(),
          Gaps.vGap16,
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (_, index) => BuildTopCategoriesItem(
              categoryModel: categories[index],
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 0.7,
              crossAxisSpacing: 5,
              mainAxisSpacing: 15,
            ),
          )
        ],
      ),
    );
  }
}
