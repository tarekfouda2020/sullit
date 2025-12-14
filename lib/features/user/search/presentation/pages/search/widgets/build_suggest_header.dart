part of 'search_widgets_imports.dart';

class BuildSuggestHeader extends StatelessWidget {
  final String title;
  final bool showSeeAll;
  final bool isProduct;
  final SearchController controller;

  const BuildSuggestHeader(
      {super.key,
      required this.title,
      required this.showSeeAll,
      this.isProduct = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: MediaQuery.of(context).size.width,
      padding: Dimens.paddingAll20PX,
      margin: Dimens.paddingVertical5PX,
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.greyWhite.withOpacity(.1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.s14_w800(color: context.colors.primary),
            ),
          ),
          if (showSeeAll)
            GestureDetector(
              onTap: () => AutoRouter.of(context).push(AllProductsSearchRoute(
                searchText: controller.searchController.text,
                showProducts: isProduct,
              )),
              child: Text(
                tr("seeAll"),
                style: AppTextStyle.s14_w800(color: context.colors.primary),
              ),
            ),
        ],
      ),
    );
  }
}
