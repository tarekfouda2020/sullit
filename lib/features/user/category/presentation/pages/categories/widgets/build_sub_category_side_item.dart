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
    print("======>>>>>> sub cat 1${subCategoryModel.id}");
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: Dimens.dp10, end: Dimens.dp10,top: Dimens.dp20,bottom: Dimens.dp35),
      child: Visibility(
        visible: length > 1,
        replacement: SubCategorySideItemReplacementWidget(
          subCategoryModel: subCategoryModel,
          categoriesController: categoriesController,
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
                  onTap: () => AutoRouter.of(context).push(
                    CategoryDetailsRoute(categoryModel: subCategoryModel),
                  ),
                  child: Column(
                    children: [
                      CachedImage(
                        url: "",
                        width: Dimens.dp70,
                        height: Dimens.dp70,
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
              ...List.generate(
                subCategoryModel.subCats!.length,
                (index) => SizedBox(
                  width: Dimens.dp96,
                  child: InkWell(
                    onTap: () => AutoRouter.of(context)
                        .push(CategoryDetailsRoute(categoryModel: subCategoryModel.subCats![index])),
                    child: Column(
                      children: [
                        Container(
                          width: Dimens.dp80,
                          height: Dimens.dp80,
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: context.colors.lightPink,
                              shape:  BoxShape.circle
                          ),
                          child: CachedImage(
                            url: subCategoryModel.subCats![index].icon,
                            width: Dimens.dp80,
                            height: Dimens.dp80,
                            fit: BoxFit.fill,
                            boxShape: BoxShape.circle,
                            haveRadius: false,
                            placeHolder: SvgPicture.asset(
                              Res.category,
                              width: Dimens.dp30,
                              height: Dimens.dp30,
                              colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
                            ),
                          ),
                        ),
                        Gaps.vGap10,
                        Text(
                          subCategoryModel.subCats![index].name,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.s12_w700(
                            color: context.colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
