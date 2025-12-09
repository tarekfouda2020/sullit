part of 'product_details_widgets_imports.dart';

class CartSheetItemWidget extends StatelessWidget {
  final CartItem item;
  final CartSheetController controller;
  const CartSheetItemWidget({super.key, required this.item, required this.controller});

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
           Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CachedImage(
              url: item.thumbnailImage,
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
                        item.name,
                        style: AppTextStyle.s14_w600(color: context.colors.black)
                            .copyWith(height: 1.5),
                      ),
                    ),
                    Gaps.hGap5,
                     CartSheetItemFavoriteWidget(cartItem: item,controller: controller),
                  ],
                ),
                Gaps.vGap5,
                RatingBar.builder(
                  initialRating : item.rating.toDouble(),
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
                DirhamPrice(amount:item.price,
                  textStyle: AppTextStyle.s14_w600(color: context.colors.primary),
                  currencyOffset: 0.5,
                  currencyStyle: AppTextStyle.s16_w400(color: context.colors.primary),
                ),
                Gaps.vGap6,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("${tr("soldBy")} :",
                      style: AppTextStyle.s12_w400(color: context.colors.textColor),
                    ),
                    Gaps.hGap5,
                    Text(item.soldBy,
                      style: AppTextStyle.s12_w600(color: context.colors.black),
                    ),
                  ],
                ),
                Gaps.vGap11,
                ChangeQtyCartSheetItemWidget(cartItem: item, controller: controller)
              ],
            ),
          )
        ],
      ),
    );
  }
}
