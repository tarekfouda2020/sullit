part of 'category_details_widgets_imports.dart';

class BuildAllCategoriesView extends StatelessWidget {
  final CategoryDetailsController detailsController;

  const BuildAllCategoriesView({super.key, required this.detailsController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<SubCategoryLevel>>, GenericState<List<SubCategoryLevel>>>(
      bloc: detailsController.subCategoriesCubit,
      builder: (context, state) {
        if (state is GenericUpdateState && state.data.isNotEmpty) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                state.data.length,
                (levelIndex) {
                  final level = state.data[levelIndex];
                  final subCats = level.subCategory.subCats;
                  
                  if (subCats.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          padding: Dimens.paddingAll10PX,
                          itemCount: subCats.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            final category = subCats[index];
                            final isSelected = category.id == level.selectedCategoryId;
                            return Padding(
                              padding: Dimens.paddingHorizontal5PX,
                              child: SizedBox(
                                width: Dimens.dp64,
                                child: GestureDetector(
                                  onTap: () => detailsController.onSubCatSelect(
                                    context,
                                    category,
                                    levelIndex,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: Dimens.dp64,
                                        height: Dimens.dp64,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: isSelected
                                              ? Border.all(
                                                  color: context.colors.primary,
                                                  width: 3,
                                                )
                                              : null,
                                        ),
                                        child: ClipOval(
                                          child: CachedImage(
                                            url: category.icon,
                                            width: Dimens.dp64,
                                            height: Dimens.dp64,
                                            fit: BoxFit.fill,
                                            boxShape: BoxShape.circle,
                                            haveRadius: false,
                                            placeHolder: SvgPicture.asset(
                                              Res.category,
                                              colorFilter: ColorFilter.mode(
                                                context.colors.primary,
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Gaps.vGap10,
                                      Text(
                                        category.name,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: AppTextStyle.s11_bold(
                                          color: isSelected
                                              ? context.colors.primary
                                              : context.colors.black,
                                        ).copyWith(
                                        height: 1.25
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      if (levelIndex < state.data.length - 1) Gaps.vGap10,
                    ],
                  );
                },
              ),
            ),
          );
        }  else {
          return const BuildLoadingSubCats();
        }
      },
    );
  }
}
