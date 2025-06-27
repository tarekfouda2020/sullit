part of 'return_orders_widgets_imports.dart';


class ReturnOrdersItemWidget extends StatelessWidget {
  const ReturnOrdersItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(OrderDetailsPageRoute(isReturnedOrder: true)),
      child: Column(
        children: [
          Container(
            margin: Dimens.paddingVertical5PX,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 21),
            decoration: CustomDecoration(radius: Dimens.borderRadius12PX),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                    Res.returnedOrder,
                    height: 32.r,
                    width: 32.r
                ),
                Gaps.hGap16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          tr('order'),
                          style: AppTextStyle.s14_w400(color: context.colors.black),
                        ),
                        Gaps.hGap6,
                        Text(
                          tr('#5465746'),
                          style: AppTextStyle.s14_w400(color: context.colors.black),
                        ),
                      ],
                    ),
                    Gaps.vGap7,
                    Row(
                      children: [
                        Text(
                          "${tr('Seller')}:",
                          style: AppTextStyle.s14_w400(color: context.colors.black),
                        ),
                        Gaps.hGap6,
                        Text(
                          "Munch Corner" ,
                          style: AppTextStyle.s14_w400(color: context.colors.black),
                        ),
                      ],
                    ),
                    Gaps.vGap7,
                    Row(
                      children: [
                        Text(
                          "Returned Date",
                          style: AppTextStyle.s12_w400(color: context.colors.primary),
                        ),
                        Gaps.hGap6,
                        Text(
                          ":10 feb 2025 - 09:55 PM",
                          style: AppTextStyle.s14_w400(color: context.colors.textColor),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
