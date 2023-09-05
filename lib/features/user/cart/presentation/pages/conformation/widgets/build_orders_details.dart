part of 'conformation_w_imports.dart';

class BuildOrdersDetails extends StatelessWidget {
  final OrderSummary? summary;

  const BuildOrdersDetails({Key? key, this.summary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        summary!.sectionOrders!.length,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Order Code: ",
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                  Text(
                    summary!.sectionOrders![index].code,
                    style: const AppTextStyle.s16_w500(color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: Dimens.paddingAll15PX,
              child: const Text(
                'Order Details',
                style: AppTextStyle.s16_w500(
                  color: Colors.black,
                ),
              ),
            ),
            Container(
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
                children: [
                  Table(
                    border: TableBorder.all(
                      color: context.colors.blackOpacity,
                      width: 0,
                    ),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: BorderRadius.circular(10).r,
                        ),
                        children: const [
                          BuildProductPaddedText(
                            text: "#",
                          ),
                          BuildProductPaddedText(
                            text: "Product",
                          ),
                          BuildProductPaddedText(
                            text: "Variation",
                          ),
                          BuildProductPaddedText(
                            text: "Quantity",
                          ),
                          BuildProductPaddedText(
                            text: "Delivery Type",
                          ),
                          BuildProductPaddedText(
                            text: "Price",
                          )
                        ],
                      ),
                      ...List.generate(
                        summary!.sectionOrders![index].orderDetails.length,
                        (tableIndex) => TableRow(
                          decoration: BoxDecoration(
                              color: context.colors.white,
                              borderRadius: BorderRadius.circular(10).r),
                          children: [
                            BuildProductPaddedText(
                              text: '${tableIndex + 1}',
                            ),
                            BuildProductPaddedText(
                              text: summary!.sectionOrders![index]
                                  .orderDetails[tableIndex].product!.name,
                            ),
                            BuildProductPaddedText(
                              text: summary!.sectionOrders![index]
                                  .orderDetails[tableIndex].variation,
                            ),
                            BuildProductPaddedText(
                              text:
                                  "${summary!.sectionOrders![index].orderDetails[tableIndex].quantity}",
                            ),
                            BuildProductPaddedText(
                              text: summary!.sectionOrders![index]
                                  .orderDetails[tableIndex].deliveryType,
                            ),
                            BuildProductPaddedText(
                              text: summary!.sectionOrders![index]
                                  .orderDetails[tableIndex].price,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Gaps.vGap10,
                  BuildSummaryItem(
                    title: 'Subtotal:',
                    value: summary!.sectionOrders![index].subtotal,
                  ),
                  BuildSummaryItem(
                    title: 'Shipping:',
                    value: summary!.sectionOrders![index].shipping,
                  ),
                  BuildSummaryItem(
                    title: 'Tax:',
                    value: summary!.sectionOrders![index].tax,
                  ),
                  BuildSummaryItem(
                    title: 'Coupon Discount:',
                    value: summary!.sectionOrders![index].couponDiscount,
                  ),
                  BuildSummaryItem(
                    title: 'Total:',
                    value: summary!.sectionOrders![index].total,
                    showDivider: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
