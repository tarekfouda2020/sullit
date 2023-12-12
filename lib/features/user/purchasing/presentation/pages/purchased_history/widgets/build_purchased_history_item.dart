part of 'purchased_history_widgets_imports.dart';

class BuildPurchasedHistoryItem extends StatelessWidget {
  final Orders order;
  final PurchasedHistoryController controller;

  const BuildPurchasedHistoryItem({
    Key? key,
    required this.order,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: Dimens.paddingVertical5PX,
          padding: Dimens.paddingAll15PX,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "${tr('orderCode')} : ",
                    style: AppTextStyle.s14_w500(color: context.colors.black),
                  ),
                  GestureDetector(
                    onLongPress: (){
                      Clipboard.setData( ClipboardData(text: order.code)).then((value){
                        CustomToast.showSimpleToast(msg: "Copied to clipboard",type: ToastType.success);
                      });
                    },
                      child : Text(
                        order.code,
                        style: AppTextStyle.s14_w500(color: context.colors.primary),
                      )
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => controller.onOpenHistory(order),
                    child: Icon(
                      order.selected
                          ? Icons.indeterminate_check_box
                          : Icons.add_box,
                      color: context.colors.primary,
                      size: 20.sp,
                    ),
                  )
                ],
              ),
              Gaps.vGap8,
              Row(
                children: [
                  Text(
                    "${tr('amount')} : ",
                    style: AppTextStyle.s14_w500(color: context.colors.black),
                  ),
                  Text(
                    order.total,
                    style: AppTextStyle.s14_w500(color: context.colors.primary),
                  ),
                ],
              ),
              Gaps.vGap15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildOrderOptionItem(
                    onTap: () => AutoRouter.of(context)
                        .push(OrderSummaryRoute(orderId: order.id)),
                    iconData: Icons.remove_red_eye_outlined,
                    iconColor: context.colors.blueAccent,
                    itemColor: context.colors.greyWhite,
                  ),
                  Visibility(
                    visible: order.availableCancelOrder,
                    child: BuildOrderOptionItem(
                      onTap: () => controller.cancelOrder(order),
                      iconData: Icons.delete_outline,
                      iconColor: context.colors.primary,
                      itemColor: context.colors.greyWhite,
                    ),
                  ),
                  BuildOrderOptionItem(
                    onTap: () => controller.downloadInvoice(order.id),
                    iconData: Icons.download,
                    iconColor: context.colors.yellow,
                    itemColor: context.colors.greyWhite,
                  ),
                ],
              )
            ],
          ),
        ),
        BuildOrderHistoryDetails(order: order),
      ],
    );
  }
}
