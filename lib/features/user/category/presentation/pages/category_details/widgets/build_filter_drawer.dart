part of 'category_details_widgets_imports.dart';

class BuildFilterDrawer extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildFilterDrawer({super.key, required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: context.colors.white,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp20),
        child:
            BlocBuilder<GenericBloc<SubCategory?>, GenericState<SubCategory?>>(
          bloc: categoryDetailsController.specificationsCubit,
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Gaps.vGap32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tr('filter'),
                      style: AppTextStyle.s15_w700(color: context.colors.black),
                    ),
                    IconButton(
                      onPressed: () => AutoRouter.of(context).pop(),
                      icon: Icon(
                        CupertinoIcons.clear,
                        color: context.colors.black,
                      ),
                    )
                  ],
                ),
                Gaps.line(context.colors.gray, 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BuildPriceRange(
                          categoryDetailsController: categoryDetailsController,
                        ),
                        Gaps.line(context.colors.gray, 15),
                        const BrandsFilterItem(),
                        ...List.generate(
                          state.data!.attributes.length,
                          (index) => BuildFilterItem(
                            categoryDetailsController:
                                categoryDetailsController,
                            attributesModel: state.data!.attributes[index],
                            index: index,
                          ),
                        ),
                        // BuildColorFilter(
                        //     subCategoryModel: state.data!,
                        //     categoryDetailsController:
                        //         categoryDetailsController),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: DefaultButton(
                        height: 35.h,
                        title: tr('confirm'),
                        margin: EdgeInsets.zero,
                        onTap: () {
                          Navigator.of(context).pop();
                          categoryDetailsController.pagingController.refresh();
                        },
                        color: context.colors.primary,
                        borderRadius: Dimens.borderRadius30PX,
                        textColor: context.colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    Gaps.hGap5,
                    Expanded(
                      child: GestureDetector(
                        onTap: ()=> categoryDetailsController.resetFilter(context),
                        child: Text(tr('reset',
                        ),
                        textAlign: TextAlign.center,
                        style: AppTextStyle.s18_w700(color: context.colors.primary),
                        ),
                      ),
                      // child: DefaultButton(
                      //   height: 35.h,
                      //   title: tr('reset'),
                      //   elevation: 0,
                      //   textColor: context.colors.primary,
                      //   fontSize: 18,
                      //   fontWeight: FontWeight.w700,
                      //   margin: EdgeInsets.zero,
                      //   onTap: () {
                      //     Navigator.of(context).pop();
                      //     // categoryDetailsController.pagingController.refresh();
                      //   },
                      //   color: Colors.transparent,
                      //   borderRadius: Dimens.borderRadius10PX,
                      // ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
