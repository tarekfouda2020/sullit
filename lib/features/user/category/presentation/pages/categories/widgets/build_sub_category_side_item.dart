part of 'categories_widgets_imports.dart';

class BuildSubCategorySideItem extends StatelessWidget {
  final Category subCategoryModel;
  final CategoriesController categoriesController;
final int length;
  const BuildSubCategorySideItem({
    super.key,
    required this.subCategoryModel,
    required this.categoriesController,
  required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll10PX,
      child: Visibility(
        visible: length>1,
        replacement:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Dimens.dp96,
              child: InkWell(
                onTap: () => AutoRouter.of(context).push(CategoryDetailsRoute(
                    categoryModel: subCategoryModel)),
                child: Column(
                  children: [
                    CachedImage(
                      url: "",
                      width: Dimens.dp80,
                      height: Dimens.dp80,
                      fit: BoxFit.fill,
                      boxShape: BoxShape.circle,
                      haveRadius: false,
                      placeHolder: Icon(
                        Icons.category_outlined,
                        color: context.colors.black,
                        size: Dimens.dp30,
                      ),
                    ),
                    Gaps.vGap10,
                    Text(
                      tr("viewAll"),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s12_w500(
                        color: context.colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subCategoryModel.name,
              style: AppTextStyle.s13_w500(
                color: context.colors.black,
              ),
            ),
            Gaps.line(context.colors.grey, Dimens.dp22),
            Wrap(
              direction: Axis.horizontal,
              runSpacing: Dimens.dp15,
              spacing: Dimens.dp15,
              children: [
                SizedBox(
                  width: Dimens.dp96,
                  child: InkWell(
                    onTap: () => AutoRouter.of(context).push(CategoryDetailsRoute(
                        categoryModel: subCategoryModel)),
                    child: Column(
                      children: [
                        CachedImage(
                          url: "",
                          width: Dimens.dp80,
                          height: Dimens.dp80,
                          fit: BoxFit.fill,
                          boxShape: BoxShape.circle,
                          haveRadius: false,
                          placeHolder: Icon(
                            Icons.category_outlined,
                            color: context.colors.black,
                            size: Dimens.dp30,
                          ),
                        ),
                        Gaps.vGap10,
                        Text(
                         tr("viewAll"),
                          textAlign: TextAlign.center,
                          style: AppTextStyle.s12_w500(
                            color: context.colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ...List.generate(
                  subCategoryModel.subCats!.length,
                      (index) => SizedBox(
                        width: Dimens.dp96,
                    child: InkWell(
                      onTap: () => AutoRouter.of(context).push(CategoryDetailsRoute(
                          categoryModel: subCategoryModel.subCats![index])),
                      child: Column(
                        children: [
                          CachedImage(
                            url: subCategoryModel.subCats![index].icon,
                            width: Dimens.dp80,
                            height: Dimens.dp80,
                            fit: BoxFit.fill,
                            boxShape: BoxShape.circle,
                            haveRadius: false,
                            placeHolder: Icon(
                              Icons.category_outlined,
                              color: context.colors.black,
                              size: Dimens.dp30,
                            ),
                          ),
                          Gaps.vGap10,
                          Text(
                            subCategoryModel.subCats![index].name,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.s12_w500(
                              color: context.colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]
            ),

          ],
        ),
      ),
    );
  }
}
