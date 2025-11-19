part of 'cart_payment_widgets_imports.dart';

class RequestReplaceSheetWidget extends StatelessWidget {
  final CartPaymentController controller;
  const RequestReplaceSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        padding: Dimens.paddingAll15PX,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.sheetBorderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              BottomSheetHeaderWidget(
               title: tr("confirmation"),
               onClose: () => controller.refuseReplacement(context),
             ),
            Gaps.vGap26,
            SvgPicture.asset(Res.confirmationAlertIcon),
            Gaps.vGap26,
            Text(tr("replace_out_of_stock"),
            textAlign: TextAlign.center,
            style: AppTextStyle.s18_w700(color: context.colors.black).copyWith(
              height: 1.3
            ),
            ),
            Gaps.vGap32,
            Row(
              spacing: 9,
              children: [
                Expanded(
                  child: DefaultButton(title:tr("yes_replace"),
                  margin: EdgeInsets.zero,
                  color: context.colors.mainGreen,
                    onTap: () => controller.confirmReplacement(context),
                  ),
                ),
                Expanded(
                  child: DefaultButton(title: tr("no"),
                  color: context.colors.deepGray,
                    margin: EdgeInsets.zero,
                    onTap: () => controller.refuseReplacement(context),
                    textColor: context.colors.black,
                  ),
                ),
              ],
            ),
            Gaps.vGap10,
          ],
        ),
      ),
    );
  }
}
