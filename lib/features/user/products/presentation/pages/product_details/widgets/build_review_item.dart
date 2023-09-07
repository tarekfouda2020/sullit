part of 'product_details_widgets_imports.dart';

class BuildReviewItem extends StatelessWidget {
  final Reviews reviewModel;

  const BuildReviewItem({super.key, required this.reviewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: Dimens.dp10),
      padding: Dimens.paddingAll8PX,
      width: 230.w,
      decoration: CustomDecoration(),
      child: Row(
        children: [
          CachedImage(
            height: 50.r,
            width: 50.r,
            fit: BoxFit.fill,
            haveRadius: false,
            boxShape: BoxShape.circle,
            url: reviewModel.userReview.avatarOriginal,
          ),
          Gaps.hGap10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      reviewModel.userReview.name,
                      style: AppTextStyle.s13_w500(color: context.colors.black),
                    ),
                    RatingBar.builder(
                      initialRating: reviewModel.rate.toDouble(),
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
                  ],
                ),
                Gaps.vGap5,
                Text(
                  reviewModel.comment,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppTextStyle.s11_bold(color: context.colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
