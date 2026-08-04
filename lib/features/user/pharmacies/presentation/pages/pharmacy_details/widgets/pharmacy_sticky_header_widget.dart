part of 'widgets_imports.dart';

class PharmacyStickyHeaderWidget extends StatelessWidget {
  final PharmacyDetailsController controller;

  const PharmacyStickyHeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox();
    // return Column(
    //   children: [
    //     Padding(
    //       padding: Dimens.paddingHorizontal20Px,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Text(
    //             tr("products"),
    //             style: AppTextStyle.s18_w700(color: context.colors.black),
    //           ),
    //           IconButton(
    //             onPressed: () {},
    //             icon: SvgPicture.asset(
    //               Res.filterIcon,
    //               width: 24,
    //               height: 24,
    //               colorFilter:
    //                   ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Gaps.vGap8,
    //     _buildCategories(),
    //     Gaps.vGap16,
    //     Padding(
    //       padding: Dimens.paddingHorizontal20Px,
    //       child: CustomSearchFiledWidget(
    //         hint: tr("search_in_products"),
    //         txtController: controller.productSearchCtr,
    //         onPressSearch: () {},
    //         onChange: (String value) {},
    //         onPressClear: () {},
    //       ),
    //     ),
    //     Gaps.vGap12,
    //   ],
    // );
  }

  // Widget _buildCategories() {
  //   final categories = [
  //     tr("all"),
  //     tr("multi_vitamins"),
  //     tr("cosmetics"),
  //     tr("skin_care")
  //   ];
  //   return SizedBox(
  //     height: 40.h,
  //     child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
  //       bloc: controller.selectedCategoryCubit,
  //       builder: (context, state) {
  //         return ListView.separated(
  //           padding: Dimens.paddingHorizontal20Px,
  //           scrollDirection: Axis.horizontal,
  //           itemBuilder: (context, index) {
  //             final isSelected = state.data == index;
  //             return GestureDetector(
  //               onTap: () => controller.onCategorySelected(index),
  //               child: Container(
  //                 padding:
  //                     const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
  //                 decoration: BoxDecoration(
  //                   color: isSelected
  //                       ? context.colors.primary
  //                       : context.colors.disableGray.withOpacity(0.2),
  //                   borderRadius: Dimens.borderRadius20PX,
  //                 ),
  //                 child: Center(
  //                   child: Text(
  //                     categories[index],
  //                     style: AppTextStyle.s14_w600(
  //                       color: isSelected
  //                           ? context.colors.white
  //                           : context.colors.textColor,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             );
  //           },
  //           separatorBuilder: (context, index) => Gaps.hGap10,
  //           itemCount: categories.length,
  //         );
  //       },
  //     ),
  //   );
  // }
}
