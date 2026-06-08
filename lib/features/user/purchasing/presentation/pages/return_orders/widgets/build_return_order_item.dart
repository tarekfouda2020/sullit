part of 'return_orders_widgets_imports.dart';

class BuildReturnOrderItem extends StatelessWidget {
  final Orders order;
  final ReturnOrdersController controller;

  const BuildReturnOrderItem(
      {super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: Dimens.paddingVertical5PX,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 21),
          decoration: CustomDecoration(radius: Dimens.borderRadius12PX),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Res.returnedOrder, height: 32.r, width: 32.r),
              Gaps.hGap16,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        tr('order'),
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.hGap6,
                      Text(
                        tr('#${order.code}'),
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                    ],
                  ),
                  Gaps.vGap7,
                  Row(
                    children: [
                      Text(
                        "${tr('Seller')}:",
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                      Gaps.hGap6,
                      Text(
                        sellerName(),
                        style:
                            AppTextStyle.s14_w400(color: context.colors.black),
                      ),
                    ],
                  ),
                  Gaps.vGap7,
                  Row(
                    children: [
                      Text(
                        "Returned Date",
                        style: AppTextStyle.s12_w400(
                            color: context.colors.primary),
                      ),
                      Gaps.hGap6,
                      Text(
                        ":${order.orderDate.split(' ').first}",
                        style: AppTextStyle.s14_w400(
                            color: context.colors.textColor),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          // child: Column(
          //   children: [
          //     Row(
          //       children: [
          //         Text(
          //           "${tr('productCode')} : ",
          //           style: AppTextStyle.s14_w500(color: context.colors.black),
          //         ),
          //         Text(
          //           "order.code",
          //           style: AppTextStyle.s14_w500(color: context.colors.primary),
          //         ),
          //         const Spacer(),
          //         InkWell(
          //           // onTap: () => controller.onOpenHistory(order),
          //           child: Icon(
          //             true
          //                 ? Icons.indeterminate_check_box
          //                 : Icons.add_box,
          //             color: context.colors.primary,
          //             size: 20.sp,
          //           ),
          //         )
          //       ],
          //     ),
          //     Gaps.vGap8,
          //     Row(
          //       children: [
          //         Text(
          //           "${tr('amount')} : ",
          //           style: AppTextStyle.s14_w500(color: context.colors.black),
          //         ),
          //         Text(
          //           "order.total",
          //           style: AppTextStyle.s14_w500(color: context.colors.primary),
          //         ),
          //       ],
          //     ),
          //     Gaps.vGap15,
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         BuildOrderOptionItem(
          //           // onTap: () => AutoRouter.of(context)
          //           //     .push(OrderSummaryRoute(orderId: order.id)),
          //           onTap: () {},
          //           iconData: Icons.remove_red_eye_outlined,
          //           iconColor: context.colors.blueAccent,
          //           itemColor: context.colors.greyWhite,
          //         ),
          //         Visibility(
          //           // visible: order.availableCancelOrder,
          //           visible: true,
          //           child: BuildOrderOptionItem(
          //             // onTap: () => controller.cancelOrder(order),
          //             onTap: () {},
          //             iconData: Icons.delete_outline,
          //             iconColor: context.colors.primary,
          //             itemColor: context.colors.greyWhite,
          //           ),
          //         ),
          //         BuildOrderOptionItem(
          //           // onTap: () => controller.downloadInvoice(order.id),
          //           onTap: () {},
          //           iconData: Icons.download,
          //           iconColor: context.colors.yellow,
          //           itemColor: context.colors.greyWhite,
          //         ),
          //       ],
          //     )
          //   ],
          // ),
        ),
      ],
    );
  }

  String sellerName() =>
      order.orderDetails
          .firstWhere((element) => element.id == order.id)
          .product
          ?.shop
          ?.name ??
      "";
}
