part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  final List<Category> topCategories;

  const BuildTopCategories({super.key, required this.topCategories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap5,
        BuildCustomHeaderTitle(
          title: tr('top10Categories'),
          btnText: tr('viewAllCats'),
          onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
        ),
        Gaps.vGap5,
        ...List.generate(
          topCategories.length,
          (index) => BuildTopCategoriesItem(categoryModel: topCategories[index]),
        )
      ],
    );
  }
}
