part of 'widgets_imports.dart';

class PharmacyOrderProductItemWidget extends StatelessWidget {
  final OrderDetails orderDetails;

  const PharmacyOrderProductItemWidget({
    super.key,
    required this.orderDetails,
  });

  PharmacyProduct? get pharmacyProduct =>
      orderDetails.product as PharmacyProduct?;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingH17V13,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: CustomDecoration(
          boxBorder: Border.all(color: context.colors.gray3),
          myBoxShadow: const []),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImage(
                url: pharmacyProduct?.thumbnailImage ?? "",
                width: 46,
                height: 46,
                bgColor: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
              Gaps.hGap11,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pharmacyProduct?.name ?? "",
                        style:
                            AppTextStyle.s14_w600(color: context.colors.black),
                      ),
                      Gaps.vGap5,
                      RatingBar.builder(
                        initialRating: (orderDetails.review?.rate ??
                                pharmacyProduct?.rating ??
                                0.0)
                            .toDouble(),
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
                      Gaps.vGap7,
                      Row(
                        children: [
                          DirhamPrice(
                            amount:
                                orderDetails.getPrice.toString().formatAmount(),
                            textStyle: AppTextStyle.s14_w600(
                                color: context.colors.primary),
                            currencyStyle: AppTextStyle.s16_w400(
                                color: context.colors.primary),
                          ),
                          if (_haveDiscount()) ...[
                            Gaps.hGap8,
                            InsuranceCoverageBadgeWidget(
                              percentage:
                                  orderDetails.insuranceCoveragePercentage!,
                            ),
                          ],
                        ],
                      ),
                      Gaps.vGap10,
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              pharmacyProduct?.unit ?? "",
                              style: AppTextStyle.s14_w400(
                                  color: context.colors.textColor),
                            ),
                          ),
                          Text(
                            tr("qnt"),
                            style: AppTextStyle.s14_w400(
                                color: context.colors.black),
                          ),
                          Text(
                            " :",
                            style: AppTextStyle.s14_w400(
                                color: context.colors.black),
                          ),
                          Gaps.hGap5,
                          Text(
                            orderDetails.quantity.toString(),
                            style: AppTextStyle.s14_w600(
                                color: context.colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          if (orderDetails.instructions?.isNotEmpty == true) ...[
            Gaps.vGap10,
            PharmacyProductInstructionsWidget(
              instructions: orderDetails.instructions!,
            ),
          ],
        ],
      ),
    );
  }

  bool _haveDiscount() {
    var percentage = orderDetails.insuranceCoveragePercentage;
    return percentage?.isNotEmpty == true
        && (double.tryParse(percentage ?? "0.0") ??0) > 0;
  }
}
