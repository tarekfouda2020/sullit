part of 'seller_product_review_widgets_imports.dart';

class BuildReviewItem extends StatelessWidget {
  const BuildReviewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ).r,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5).r,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      child: Column(
        children: [
          Text(
            "Text Product",
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
          Gaps.vGap15,
          RatingBar.builder(
            initialRating: 4,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemSize: 20,
            glow: true,
            ignoreGestures: true,
            itemBuilder: (context, _) => Icon(
              Icons.star_rounded,
              color: context.colors.yellow,
            ),
            unratedColor: Colors.grey[200],
            updateOnDrag: true,
            onRatingUpdate: (rating) {
              rating.toInt();
            },
          ),
        ],
      ),
    );
  }
}
