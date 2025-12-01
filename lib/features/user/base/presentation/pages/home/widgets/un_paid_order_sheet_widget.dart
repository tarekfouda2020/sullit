part of 'home_widgets_imports.dart';

class UnPaidOrderSheetWidget extends StatelessWidget {
  final Orders order;
  final HomeController controller;
  const UnPaidOrderSheetWidget({super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetHeaderWidget(title: "Alert"),
          Gaps.vGap26,
          SvgPicture.asset(
            Res.confirmationAlertIcon,
            width: Dimens.dp50,
            height: Dimens.dp50,
          ),
          Gaps.vGap26,
          Flexible(
            child: Text(
              "You have unpaid order #${order.code}",
              style: AppTextStyle.s20_w600(color: context.colors.black)
                  .copyWith(height: 1.5),
            ),
          ),
          Gaps.vGap50,
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: PayOrderButtonWidget(
                  onPressPay: () {},
                ),
              ),
              Expanded(
                  child: DefaultButton(
                onTap: () => AutoRouter.of(context).push(
                  OrderDetailsPageRoute(
                    isReturnedOrder: false,
                    order: order,
                  ),
                ),
                title: "View Details",
                height: Dimens.dp40,
                color: context.colors.gray8,
                margin: EdgeInsets.zero,
                textColor: context.colors.black,
              )),
            ],
          ),
          Gaps.vGap20,
        ],
      ),
    );
  }
}
