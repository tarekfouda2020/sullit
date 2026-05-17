import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import '../../features/user/products/domain/models/shop.dart';

class SellerCardWidget extends StatelessWidget {
  final Shop? shop;
  final void Function()? onTap;
  final bool openImage;
  const SellerCardWidget({
    super.key,
    this.shop,
    this.onTap,
    this.openImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap:openImage? () {
                    var link = shop?.sliders?.first ?? "";
                    if(link.isNotEmpty){
                      AutoRouter.of(context).push(ImageZoomRoute(image: link));
                    }
                  }:null,
                  child: CachedImage(
                    url: shop?.sliders?.first ?? "",
                    height: 150,
                    borderRadius: Dimens.topRadius12Px,
                    fit: BoxFit.cover,
                    border: Border.all(color: context.colors.gray3, width: 1.5),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(23, 11, 21, 23),
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    borderRadius: Dimens.bottomRadius12Px,
                    border: Border(
                        right: _buildBorderSide(context),
                        left: _buildBorderSide(context),
                        bottom: _buildBorderSide(context)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${shop?.rating}",
                            style: AppTextStyle.s14_w400(color: context.colors.textColor),
                          ),
                          Gaps.hGap9,
                          RatingBar.builder(
                            initialRating: shop?.rating?.toDouble() ?? 0.0,
                            ignoreGestures: true,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15.sp,
                            unratedColor: context.colors.disableGray,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          )
                        ],
                      ),
                      Gaps.vGap14,
                      Text(
                        "${shop?.name}",
                        style: AppTextStyle.s18_w600(color: context.colors.black),
                      ),
                      Gaps.vGap8,
                      Text(
                        "${shop?.shopCategoryNames.join(' - ')}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.s14_w300(color: context.colors.textColor),
                      )
                    ],
                  ),
                )
              ],
            ),
            PositionedDirectional(
              start: 10,
              top: 120,
              child: CachedImage(
                url: shop?.logo??"",
                width: Dimens.dp66,
                height: Dimens.dp66,
                haveRadius: false,
                successBgColor: context.colors.white,
                boxShape: BoxShape.circle,
                fit: BoxFit.contain,
                border: Border.all(color: context.colors.white, width: 3),
              ),
            )
          ],
        ),
      ),
    );
  }

  BorderSide _buildBorderSide(BuildContext context) {
    return BorderSide(color: context.colors.gray3, width: 1.5);
  }
}
