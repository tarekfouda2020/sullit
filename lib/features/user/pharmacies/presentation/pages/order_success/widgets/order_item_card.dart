part of 'widgets_imports.dart';

class OrderItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final String price;
  final String description;
  final int quantity;

  const OrderItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.price,
    required this.description,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        radius: Dimens.borderRadius20PX,
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: imageUrl,
            height: 60.r,
            width: 60.r,
            fit: BoxFit.contain,
          ),
          Gaps.hGap15,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s16_w700(color: context.colors.black),
                ),
                Gaps.vGap8,
                RatingBar.builder(
                  initialRating: rating,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 14.sp,
                  ignoreGestures: true,
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rounded,
                    color: context.colors.yellow,
                  ),
                  unratedColor: context.colors.grey,
                  onRatingUpdate: (rating) {},
                ),
                Gaps.vGap12,
                DirhamPrice(
                  amount: price,
                  color: context.colors.redAccent,
                  textStyle: AppTextStyle.s16_w700(color: context.colors.redAccent),
                  currencyStyle: AppTextStyle.s16_w700(color: context.colors.redAccent),
                ),
                Gaps.vGap12,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      description,
                      style: AppTextStyle.s14_w400(color: context.colors.textColor),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Qnt : ",
                            style: AppTextStyle.s14_w400(color: context.colors.black),
                          ),
                          TextSpan(
                            text: "$quantity",
                            style: AppTextStyle.s14_w700(color: context.colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
