import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

class SellerCardWidget extends StatelessWidget {
   const SellerCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width*0.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              CachedImage(
                url:
                    "https://images.stockcake.com/public/9/6/6/96639371-f5a4-41d1-8e95-aa7ee2ae0297_large/beauty-product-display-stockcake.jpg",
                height: 106,
                borderRadius: Dimens.topRadius12Px,
                fit: BoxFit.fill,
                border: Border.all(color: context.colors.gray3, width: 1.5),
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
                          "4/5",
                          style: AppTextStyle.s14_w400(
                              color: context.colors.textColor),
                        ),
                        Gaps.hGap9,
                        RatingBar.builder(
                          initialRating: 4,
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
                      "AL Mushrif Mcoop",
                      style: AppTextStyle.s18_w600(color: context.colors.black),
                    ),
                    Gaps.vGap8,
                    Row(
                      children: List.generate(
                        5,
                        (index) {
                          return Expanded(
                            child: Text(
                              "Grocery, ",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: AppTextStyle.s14_w300(
                                  color: context.colors.textColor),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          PositionedDirectional(
            start: 10,
            child: CachedImage(
              url:
                  "https://logohistory.net/wp-content/uploads/2023/02/Nike-Logo.png",
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
    );
  }

  BorderSide _buildBorderSide(BuildContext context) {
    return BorderSide(color: context.colors.gray3, width: 1.5);
  }
}
