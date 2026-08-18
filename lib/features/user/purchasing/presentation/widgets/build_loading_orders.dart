part of 'purchasing_widgets_imports.dart';

class BuildLoadingOrders extends StatelessWidget {
  const BuildLoadingOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GenericListView(
        type: ListViewType.normal,
        children: List.generate(
          4,
          (index) => Container(
            margin: Dimens.paddingVertical5PX,
            padding: Dimens.paddingAll15PX,
            decoration: const CustomDecoration(),
            child: Column(
              children: [
                Row(
                  children: [
                    BuildShimmerItem(
                      height: 30.h,
                      width: 40.w,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    // BuildShimmerItem(
                    //   child: Text(
                    //     " : ",
                    //     style:
                    //         AppTextStyle.s16_w500(color: context.colors.grey),
                    //   ),
                    // ),

                    Gaps.hGap10,
                    Column(
                      children: [
                        BuildShimmerItem(
                          height: 10,
                          width: 200.r,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        Gaps.vGap6,
                        BuildShimmerItem(
                          height: 10,
                          width: 200.r,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ],
                    ),
                  ],
                ),
                // Gaps.vGap8,
                // Row(
                //   children: [
                //     BuildShimmerItem(height: 10.h, width: 60.w),
                //     BuildShimmerItem(
                //       child: Text(
                //         " : ",
                //         style:
                //             AppTextStyle.s12_w400(color: context.colors.grey),
                //       ),
                //     ),
                //     BuildShimmerItem(height: 10.h, width: 60.w),
                //   ],
                // ),
                // Gaps.vGap15,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     BuildShimmerItem(
                //       child: BuildOrderOptionItem(
                //         onTap: () {},
                //         iconData: Icons.remove_red_eye_outlined,
                //         iconColor: context.colors.grey,
                //         itemColor: context.colors.greyWhite,
                //       ),
                //     ),
                //     BuildShimmerItem(
                //       child: BuildOrderOptionItem(
                //         onTap: () {},
                //         iconData: Icons.delete_outline,
                //         iconColor: context.colors.grey,
                //         itemColor: context.colors.greyWhite,
                //       ),
                //     ),
                //     BuildShimmerItem(
                //       child: BuildOrderOptionItem(
                //         onTap: () {},
                //         iconData: Icons.download,
                //         iconColor: context.colors.grey,
                //         itemColor: context.colors.greyWhite,
                //       ),
                //     )
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
