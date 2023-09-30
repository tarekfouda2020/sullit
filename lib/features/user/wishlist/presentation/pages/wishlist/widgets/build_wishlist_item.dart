part of 'wishlist_widgets_imports.dart';

class BuildWishlistItem extends StatelessWidget {
  const BuildWishlistItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(7).r,
        border: Border.all(color: context.colors.greyWhite),
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CachedImage(
              fit: BoxFit.cover,
                haveRadius: true,
                borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(7).r,
                    topLeft: const Radius.circular(7).r),
                url:
                    "https://i.ebayimg.com/images/g/2YAAAOSw-jVhULVS/s-l400.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(8).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Olay",
                  style: AppTextStyle.s14_w800(
                    color: context.colors.black,
                  ),
                ),
                RatingBar.builder(
                  initialRating: 3,
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
                Row(
                  children: [
                    Text(
                      "AED -8.21",
                      style:
                          AppTextStyle.s10_bold(color: context.colors.primary),
                    ),
                    Gaps.hGap5,
                    Text(
                      "AED 1.79",
                      style: AppTextStyle.s10_bold(
                        color: context.colors.black,
                      ).copyWith(decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: context.colors.gray,height: 2,),
          Row(children: [
            Expanded(child: Icon(Icons.delete_outline,color: context.colors.primary,size: 20.sp,)),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8).r,
                margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5).r,
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(5).r
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                  Icon(Icons.shopping_cart,color: context.colors.white,size: 10.sp,),
                  Text(
                    tr('addToCart'),
                    style: AppTextStyle.s12_w400(
                      color: context.colors.white,
                    ),
                  ),
                ],),
              ),
            )
          ],)
        ],
      ),
    );
  }
}
