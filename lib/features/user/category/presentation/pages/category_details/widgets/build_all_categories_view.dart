part of 'category_details_widgets_imports.dart';

class BuildAllCategoriesView extends StatelessWidget {
  final CategoryDetailsController detailsController;

  const BuildAllCategoriesView({super.key, required this.detailsController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<SubCategory?>, GenericState<SubCategory?>>(
      bloc: detailsController.subCategoriesCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
         if(state.data!.subCats.isNotEmpty){
           return SizedBox(
             height: 130,
             child: ListView.builder(
               padding: Dimens.paddingAll10PX,
               itemCount: state.data!.subCats.length,
               scrollDirection: Axis.horizontal,
               itemBuilder: (_, index) => Padding(
                 padding: Dimens.paddingHorizontal5PX,
                 child: SizedBox(
                   width: Dimens.dp64,
                   child: InkWell(
                     onTap: () => detailsController.onSubCatSelect(
                         context, state.data!.subCats[index]),
                     child: Column(
                       children: [
                         CachedImage(
                           url: state.data!.subCats[index].icon,
                           width: Dimens.dp64,
                           height: Dimens.dp64,
                           fit: BoxFit.fill,
                           boxShape: BoxShape.circle,
                           haveRadius: false,
                           placeHolder: SvgPicture.asset(Res.category,
                           colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
                           ),
                         ),
                         Gaps.vGap10,
                         Text(
                           state.data!.subCats[index].name,
                           overflow: TextOverflow.ellipsis,
                           maxLines: 2,
                           textAlign: TextAlign.center,
                           style: AppTextStyle.s11_bold(
                             color: context.colors.black,
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
               ),
             ),
           );
         }else{
           return Gaps.vGap15;
         }
        } else {
          return const BuildLoadingSubCats();
        }
      },
    );
    // return BlocBuilder<GenericBloc<List<SubCategory>>,
    //     GenericState<List<SubCategory>>>(
    //   bloc: detailsController.subCategoriesCubit,
    //   builder: (context, state) {
    //     if (state is GenericUpdateState) {
    //       return Padding(
    //         padding: Dimens.paddingVertical5PX,
    //         child: Column(
    //           children: List.generate(
    //             state.data.length,
    //             (position) => BuildSubCategories(
    //               categoryDetailsController: detailsController,
    //               parentSubCategory: state.data[position],
    //               position: position,
    //             ),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return const BuildLoadingSubCats();
    //     }
    //   },
    // );
  }
}
