part of 'conformation_w_imports.dart';

class BuildOrdersDetails extends StatelessWidget {
  final OrderSummary summary;

  const BuildOrdersDetails({Key? key, required this.summary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        summary.sectionOrders!.length,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${tr('orderCode')}: ",
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                  Text(
                    summary.sectionOrders![index].code,
                    style: const AppTextStyle.s16_w500(color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: Dimens.paddingAll15PX,
              child: Text(
                tr('orderDetails'),
                style: const AppTextStyle.s16_w500(
                  color: Colors.black,
                ),
              ),
            ),
            ...List.generate(
              summary.sectionOrders![index].orderDetails.length,
              (productsIndex) => Container(
                padding: Dimens.paddingAll8PX,
                margin: Dimens.paddingHorizontal15PX,
                decoration: BoxDecoration(
                  borderRadius: Dimens.borderRadius5PX,
                  color: context.colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.greyWhite,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        summary.sectionOrders![index]
                            .orderDetails[productsIndex].deliveryType,
                        style:
                            AppTextStyle.s14_w600(color: context.colors.black),
                      ),
                    ),
                    Container(
                      padding: Dimens.paddingAll8PX,
                      decoration: CustomDecoration(),
                      child: Row(
                        children: [
                          CachedImage(
                            url: summary
                                .sectionOrders![index]
                                .orderDetails[productsIndex]
                                .product!
                                .thumbnailImage??"",
                            height: 50.h,
                            width: 50.w,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Gaps.hGap10,
                                  Text(
                                    summary
                                        .sectionOrders![index]
                                        .orderDetails[productsIndex]
                                        .product!
                                        .name,
                                    style: AppTextStyle.s14_w600(
                                        color: context.colors.black),
                                  ),
                                  Gaps.hGap10,
                                  Text(
                                    "${tr('variation')} : ",
                                    style: AppTextStyle.s12_w400(
                                        color: context.colors.black),
                                  ),
                                  Text(
                                    overflow: TextOverflow.ellipsis,
                                    summary.sectionOrders![index]
                                        .orderDetails[productsIndex].variation,
                                    style: AppTextStyle.s14_w400(
                                        color: context.colors.black),
                                  ),
                                ],
                              ),
                              Gaps.vGap10,
                              Row(
                                children: [
                                  Gaps.hGap10,
                                  Text(
                                    "${tr('quantity')} : ",
                                    style: AppTextStyle.s12_w400(
                                        color: context.colors.black),
                                  ),
                                  Text(
                                    summary.sectionOrders![index]
                                        .orderDetails[productsIndex].quantity
                                        .toString(),
                                    style: AppTextStyle.s14_w400(
                                        color: context.colors.black),
                                  ),
                                  Gaps.hGap32,
                                  Text(
                                    "${tr('price')} : ",
                                    style: AppTextStyle.s12_w400(
                                        color: context.colors.black),
                                  ),
                                  Text(
                                    summary.sectionOrders![index]
                                        .orderDetails[productsIndex].price,
                                    style: AppTextStyle.s14_w400(
                                        color: context.colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Gaps.vGap10,
                    BuildSummaryItem(
                      title: '${tr('subTotal')}:',
                      value: summary.sectionOrders![index].subtotal,
                    ),
                    BuildSummaryItem(
                      title: '${tr('shipping')}:',
                      value: summary.sectionOrders![index].shipping,
                    ),
                    BuildSummaryItem(
                      title: '${tr('tax')}:',
                      value: summary.sectionOrders![index].tax,
                    ),
                    BuildSummaryItem(
                      title: '${tr('couponDiscount')}:',
                      value: summary.sectionOrders![index].couponDiscount,
                    ),
                    BuildSummaryItem(
                      title: '${tr('total')}:',
                      value: summary.sectionOrders![index].total,
                      showDivider: false,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
