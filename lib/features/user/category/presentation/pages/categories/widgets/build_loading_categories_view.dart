part of 'categories_widgets_imports.dart';

class BuildLoadingCategoriesView extends StatelessWidget {
  const BuildLoadingCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: Dimens.standardPadding,
        itemCount: 6, // Show 6 shimmer sections
        itemBuilder: (context, index) {
          return const BuildLoadingCategoriesSectionWidget();
        },
      ),
    );
  }
}

class BuildLoadingCategoriesSectionWidget extends StatelessWidget {
  const BuildLoadingCategoriesSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      color: context.colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header title shimmer
          BuildShimmerItem(
            height: 20.r,
            width: 120.r,
            borderRadius: BorderRadius.circular(4),
          ),
          Gaps.vGap12,
          // Horizontal scrollable subcategories shimmer
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5, // Show 5 shimmer subcategory items
                (index) {
                  return Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8),
                    child: Column(
                      children: [
                        // Circular image shimmer
                        BuildShimmerItem(
                          height: 69.r,
                          width: 69.r,
                          borderRadius: BorderRadius.circular(69.r / 2),
                        ),
                        Gaps.vGap8,
                        // Text shimmer
                        BuildShimmerItem(
                          height: 12.r,
                          width: 60.r,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        Gaps.vGap5,
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
