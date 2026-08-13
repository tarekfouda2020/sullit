part of 'widgets_imports.dart';

class RestaurantOrderProductsWidget extends StatelessWidget {
  final Orders order;
  const RestaurantOrderProductsWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row(
        //   children: [
        //     Text(
        //       "${tr("soldBy")} :",
        //       style: AppTextStyle.s14_w400(color: context.colors.textColor),
        //     ),
        //     Gaps.hGap7,
        //     Text(
        //       order.soldBy,
        //       style: AppTextStyle.s14_w600(color: context.colors.black),
        //     ),
        //   ],
        // ),
        // Gaps.vGap12,
        ...List.generate(order.orderDetails.length, (index) {
          var item = order.orderDetails[index];
          return PharmacyOrderProductItemWidget(
            orderDetails: item,
          );
        }),
        // Padding(
        //   padding: const EdgeInsets.only(top: 18),
        //   child: GestureDetector(
        //     onTap: () => AutoRouter.of(context)
        //         .push(TrackOrderRoute(orderId: order.id)),
        //     child: Row(
        //       children: [
        //         Text(
        //           tr("trackShipment"),
        //           style: AppTextStyle.s14_w400(color: context.colors.primary),
        //         ),
        //         Gaps.hGap10,
        //         Icon(
        //           Icons.arrow_forward_rounded,
        //           color: context.colors.primary,
        //         ),
        //         const Spacer(),
        //         Text(
        //           order.orderStatus,
        //           style: AppTextStyle.s14_w700(color: context.colors.black),
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
