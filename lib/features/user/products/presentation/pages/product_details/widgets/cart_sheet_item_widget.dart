part of 'product_details_widgets_imports.dart';

class CartSheetItemWidget extends StatelessWidget {
  const CartSheetItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        boxBorder: Border.all(color: context.colors.gray3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: CachedImage(
              url: "https://media.istockphoto.com/id/1490797933/photo/tasty-colorful-jelly-candies-as-background-above-view.jpg?s=612x612&w=0&k=20&c=SARD1gFY86d3jSVQ97g7k0Ecr5GEISuLQ8MNwBOaIvM=",
             width: 46, height: 46,
              fit: BoxFit.cover,
            ),
          ),
          Gaps.hGap11,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Dubai Chocolate Konafa Pistachio",
                        style: AppTextStyle.s14_w600(color: context.colors.black)
                            .copyWith(height: 1.5),
                      ),
                    ),
                    Container(
                      padding: Dimens.paddingAll6PX,
                      decoration: CustomDecoration(
                          myBoxShadow: const [],
                          radius: Dimens.borderRadius5PX
                      ),
                      /// svgPicture.asset(Res.favIcon)
                      child: SvgPicture.asset(Res.emptyFavIcon),
                    ),
                  ],
                ),
                Gaps.vGap5,
                RatingBar.builder(
                  initialRating : 3,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 10.sp,
                  ignoreGestures: true,
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rounded,
                    color: context.colors.yellow,
                  ),
                  unratedColor: context.colors.grey,
                  onRatingUpdate: (rating) {},
                ),
                Gaps.vGap5,
                Text("20.00 AED",
                  style: AppTextStyle.s14_w600(color: context.colors.primary),
                ),
                Gaps.vGap6,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Sold By :",
                      style: AppTextStyle.s12_w400(color: context.colors.textColor),
                    ),
                    Gaps.hGap5,
                    Text("Munch Corner",
                      style: AppTextStyle.s12_w600(color: context.colors.black),
                    ),
                  ],
                ),
                Gaps.vGap11,
                Row(
                  children: [
                    BuildCustomBounce(
                      onTap: () {},
                      iconData: CupertinoIcons.minus,
                      margin: const EdgeInsetsDirectional.only(end: 19) ,
                    ),
                    Text(
                      "2",
                      style: AppTextStyle.s16_w400(
                        color: context.colors.black,
                      ),
                    ),
                    BuildCustomBounce(
                      onTap: () {},
                      iconData: CupertinoIcons.add,
                      margin: const EdgeInsetsDirectional.only(start: 19) ,
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(Res.trashIcon)
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
