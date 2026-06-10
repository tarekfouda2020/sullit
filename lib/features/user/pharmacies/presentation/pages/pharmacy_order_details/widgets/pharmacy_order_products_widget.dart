part of 'widgets_imports.dart';

class PharmacyOrderProductsWidget extends StatelessWidget {
  final Orders order;
  const PharmacyOrderProductsWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
