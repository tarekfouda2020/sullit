part of 'order_details_widgets_imports.dart';

class OrderDetailsProductsWidget extends StatelessWidget {
  final bool isReturned;

  const OrderDetailsProductsWidget({super.key, required this.isReturned});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, right: 19, top: 17, bottom: 20).r,
      decoration: const CustomDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Sold By :",
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
              Gaps.hGap7,
              Text(
                "Munch Corner",
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap12,
          ...List.generate(5, (index) {
            return OrderDetailsProductItemWidget(
              isReturned: isReturned,
            );
          }),
          if(!isReturned)
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "Track Shipment",
                    style: AppTextStyle.s14_w400(color: context.colors.primary),
                  ),
                  Gaps.hGap10,
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: context.colors.primary,
                  ),
                  const Spacer(),
                  Text(
                    "Shipped",
                    style: AppTextStyle.s14_w700(color: context.colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
