part of 'search_widgets_imports.dart';

class BuildCategorySuggestItem extends StatelessWidget {
  final List<Category> categories;
  // final search.SearchController controller;

  const BuildCategorySuggestItem({super.key, required this.categories,

    // required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSuggestHeader(title: tr('catSuggestions')),
        Visibility(
          visible: categories.isEmpty,
          child: Container(
            padding: Dimens.paddingVertical20PX,
            alignment: Alignment.center,
            child: Text(
              tr("noCategoriesFound"),
              style: AppTextStyle.s15_w700(color: context.colors.black),
            ),
          ),
        ),
        ...List.generate(
          categories.length,
              (index) =>
              GestureDetector(
                onTap: () =>
                    AutoRouter.of(context).push(
                      CategoryDetailsRoute(
                        categoryModel: categories[index],
                      ),
                    ),
                child: Padding(
                  padding: Dimens.standardPadding,
                  child: Text(
                    categories[index].name.toUpperCase(),
                    style: AppTextStyle.s15_w500(color: context.colors.black),
                  ),
                ),
              ),
        )
      ],
    );
  }
}
