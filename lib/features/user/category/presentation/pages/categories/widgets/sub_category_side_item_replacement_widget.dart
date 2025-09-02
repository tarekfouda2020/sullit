part  of 'categories_widgets_imports.dart';

class SubCategorySideItemReplacementWidget extends StatelessWidget {
  final Category subCategoryModel;
  final CategoriesController categoriesController;
  const SubCategorySideItemReplacementWidget({super.key, required this.subCategoryModel, required this.categoriesController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: Dimens.dp96,
          child: InkWell(
            onTap: () => AutoRouter.of(context).push(CategoryDetailsRoute(
                categoryModel:
                categoriesController.mainCategory ?? subCategoryModel)),
            child: Column(
              children: [
                CachedImage(
                  url: "",
                  width: Dimens.dp80,
                  height: Dimens.dp80,
                  fit: BoxFit.fill,
                  bgColor: context.colors.lightPink,
                  boxShape: BoxShape.circle,
                  haveRadius: false,
                  placeHolder: SvgPicture.asset(
                    Res.category,
                    width: Dimens.dp30,
                    height: Dimens.dp30,
                    colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
                  ),
                ),
                Gaps.vGap10,
                Text(
                  tr("viewAll"),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s12_w700(
                    color: context.colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
