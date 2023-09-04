part of 'order_summary_widgets_imports.dart';

class BuildSendReviewDialog extends StatelessWidget {
  final OrderSummaryController controller;
  final OrderDetails orderDetailsModel;

  const BuildSendReviewDialog(
      {super.key, required this.controller, required this.orderDetailsModel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Form(
        key: orderDetailsModel.orderReview?.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Review Product",
                  style: AppTextStyle.s16_w500(color: context.colors.black),
                ),
                IconButton(
                  onPressed: () => AutoRouter.of(context).pop(),
                  icon: Icon(
                    Icons.close,
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            Gaps.vGap10,
            BlocBuilder<GenericBloc<int>, GenericState<int>>(
              bloc: orderDetailsModel.orderReview?.ratingCubit,
              builder: (context, state) {
                return RatingBar.builder(
                  initialRating: state.data.toDouble(),
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 25.sp,
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rounded,
                    color: context.colors.yellow,
                  ),
                  unratedColor: context.colors.grey,
                  onRatingUpdate: (rating) => orderDetailsModel
                      .orderReview?.ratingCubit
                      .onUpdateData(rating.toInt()),
                );
              },
            ),
            GenericTextField(
              label: "Comment",
              controller: orderDetailsModel.orderReview?.rateComment,
              fieldTypes: FieldTypes.rich,
              type: TextInputType.multiline,
              max: 4,
              margin: Dimens.paddingVertical15PX,
              action: TextInputAction.newline,
              validate: (value) => value?.validateEmpty(),
            ),
            DefaultButton(
              title: "Submit Review",
              onTap: () => controller.sendReview(orderDetailsModel),
            )
          ],
        ),
      ),
    );
  }
}
