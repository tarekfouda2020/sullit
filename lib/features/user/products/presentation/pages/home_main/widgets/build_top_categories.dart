part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  final List<Category> categories;

  const BuildTopCategories({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: categories.isNotEmpty,
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
              childAspectRatio: 0.59,
              crossAxisSpacing: 8,
              mainAxisSpacing: 15,
            ),
          )
          // SizedBox(
          //   height: 600,
          //   child: GridView.builder(
          //     // shrinkWrap: true,
          //     // physics: const NeverScrollableScrollPhysics(),
          //     scrollDirection: Axis.horizontal,
          //     itemCount: categories.length,
          //     itemBuilder: (_, index) => BuildTopCategoriesItem(
          //       categoryModel: categories[index],
          //     ),
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 5,
          //       childAspectRatio: 0.60,
          //       crossAxisSpacing: 8,
          //       mainAxisSpacing: 15,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
