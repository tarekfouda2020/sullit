part of 'home_widgets_imports.dart';

class UnPaidOrderSheetWidget extends StatelessWidget {
  final Orders order;
  final HomeController controller;
  const UnPaidOrderSheetWidget({super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           BottomSheetHeaderWidget(title: tr("alert")),
          Gaps.vGap26,
          SvgPicture.asset(
            Res.confirmationAlertIcon,
            width: Dimens.dp65,
            height: Dimens.dp65,
          ),
          Gaps.vGap26,
          Flexible(
            child: Text(
              "${tr("you_have_unpaid_order")} #${order.code}",
              textAlign: TextAlign.center,
              style: AppTextStyle.s18_w600(color: context.colors.black)
                  .copyWith(height: 1.5),
            ),
          ),
          Gaps.vGap50,
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: PayOrderButtonWidget(
                  onPressPay: () => controller.onPayOrder(context),
                ),
              ),
              Expanded(
                child: DefaultButton(
                onTap: () => controller.viewOrderDetails(context),
                title: tr("view_details"),
                height: Dimens.dp40,
                color: context.colors.deepGray,
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
