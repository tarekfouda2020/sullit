part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  final List<Category> topCategories;

  const BuildTopCategories({super.key, required this.topCategories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap15,
        BuildCustomHeaderTitle(
          title: "categories",
          onTap: () => AutoRouter.of(context).push(HomeRoute(index: 1)),
        ),
        GridView.builder(
          padding: Dimens.paddingHorizontal15PX,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: topCategories.length,
          itemBuilder: (_, index) => BuildTopCategoriesItem(
            categoryModel: topCategories[index],
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 0.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 15,
          ),
        )
      ],
    );
  }
}
