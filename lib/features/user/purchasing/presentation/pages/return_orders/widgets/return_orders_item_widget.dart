part of 'return_orders_widgets_imports.dart';


class ReturnOrdersItemWidget extends StatelessWidget {
  final Orders order;
  final ReturnOrdersController controller;
  const ReturnOrdersItemWidget({super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(OrderDetailsPageRoute(isReturnedOrder: true,order: order)),
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
                         "#${order.code}",
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
                          order.soldBy,
                          style: AppTextStyle.s14_w400(color: context.colors.black),
                        ),
                      ],
                    ),
                    Gaps.vGap7,
                    Row(
                      children: [
                        Text(
                          tr("returnedDate"),
                          style: AppTextStyle.s12_w400(color: context.colors.primary),
                        ),
                        Gaps.hGap6,
                        Text(
                          DateTimeHelper.formatDate(
                              date: _getDate,
                              formatType: "d MMM yyyy - hh:mm a"
                          ),
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

  DateTime get _getDate => DateTimeHelper.convertToDateTime(strDate: order.orderDate);


}
