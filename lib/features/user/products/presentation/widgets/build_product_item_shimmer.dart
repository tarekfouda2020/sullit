import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';

class BuildProductItemShimmer extends StatelessWidget {
  final EdgeInsetsDirectional? margin;
  const BuildProductItemShimmer({Key? key, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      width: 160.w,
      decoration: CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                BuildShimmerItem(
                  child: Container(color: context.colors.offWhite),
                ),
                PositionedDirectional(
                  end: 3,
                  child: Column(
                    children: [
                      BuildShimmerItem(
                        child: BuildIconItem(
                          iconData: Icons.favorite_border,
                          onTap: () {},
                        ),
                      ),
                      // BuildShimmerItem(
                      //   child: BuildIconItem(
                      //     iconData: Icons.compare_arrows,
                      //     onTap: () {},
                      //   ),
                      // ),
                      // BuildShimmerItem(
                      //   child: BuildIconItem(
                      //     iconData: Icons.shopping_cart,
                      //     onTap: () {},
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: Dimens.paddingAll8PX,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const BuildShimmerItem(
                      height: 10,
                      width: 50,
                    ),
                    Gaps.hGap5,
                    const BuildShimmerItem(
                      height: 10,
                      width: 50,
                    ),
                  ],
                ),
                BuildShimmerItem(
                  child: RatingBar.builder(
                    initialRating: 5,
                    ignoreGestures: true,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 16,
                    unratedColor: context.colors.disableGray,
                    itemPadding: const EdgeInsets.only(bottom: 5).r,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                const BuildShimmerItem(
                  height: 10,
                  width: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
