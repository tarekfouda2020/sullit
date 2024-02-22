part of 'categories_widgets_imports.dart';

class BuildSubCategorySideItem extends StatelessWidget {
  final Category subCategoryModel;
  final CategoriesController categoriesController;

  const BuildSubCategorySideItem({
    super.key,
    required this.subCategoryModel,
    required this.categoriesController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH10V5,
      child: Column(
        children: [
          InkWell(
            onTap: () => categoriesController.onSelectSubCat(subCategoryModel),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    subCategoryModel.name,
                    style: AppTextStyle.s13_w500(
                      color: context.colors.black,
                    ),
                  ),
                ),
                Gaps.hGap5,
                Icon(
                  subCategoryModel.isSideCatSelected == false
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up,
                  color: context.colors.black,
                  size: Dimens.dp20,
                )
              ],
            ),
          ),
          Gaps.line(context.colors.grey, Dimens.dp22),
          Visibility(
            visible: subCategoryModel.isSideCatSelected,
            child: BlocBuilder<GenericBloc<List<Category>>,
                GenericState<List<Category>>>(
              bloc: categoriesController.subCatsCubit,
              builder: (context, state) {
               if(state is GenericUpdateState){
                 return Wrap(
                   direction: Axis.horizontal,
                   runSpacing: Dimens.dp15,
                   spacing: Dimens.dp15,
                   children: List.generate(
                     state.data.length,
                         (index) => SizedBox(
                       width: Dimens.dp96,
                       child: InkWell(
                         onTap: () => AutoRouter.of(context)
                             .push(CategoryDetailsRoute(categoryModel: state.data[index])),
                         child: Column(
                           children: [
                             CachedImage(
                               url: state.data[index].icon,
                               width: Dimens.dp96,
                               height: Dimens.dp96,
                               fit: BoxFit.fill,
                             ),
                             Gaps.vGap10,
                             Text(
                               state.data[index].name,
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
                 );
               }else{
                 return const BuildLoadingSubCategories();
               }
              },
            ),
          )
        ],
      ),
    );
  }
}
