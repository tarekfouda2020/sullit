import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';

class BuildLoadingProductItem extends StatelessWidget {
  const BuildLoadingProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  top: 20.r,
                  child: BuildShimmerItem(
                    child: BuildIconItem(
                      iconData: Icons.favorite_border,
                      onTap: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: Dimens.paddingAll8PX,
            child: Column(
              children: [
                BuildShimmerItem(height: 15.h),
                BuildShimmerItem(height: 15.h)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
