part of 'search_widgets_imports.dart';

class BuildCategorySuggestItem extends StatelessWidget {
  final List<Category> categories;

  const BuildCategorySuggestItem({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: categories.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildSuggestHeader(title: tr('catSuggestions')),
          ...List.generate(
            categories.length,
            (index) => GestureDetector(
              onTap: () => AutoRouter.of(context).push(
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
      ),
    );
  }
}
