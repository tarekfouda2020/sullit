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
               title: "Confirmation",
               onClose: () => controller.refuseReplacement(context),
             ),
            Gaps.vGap26,
            SvgPicture.asset(Res.confirmationAlertIcon),
            Gaps.vGap26,
            Text("Please replace any out-of-stock items with a similar product of equal or smaller value. I trust your judgment!",
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
                  child: DefaultButton(title: "Yes Replace",
                  margin: EdgeInsets.zero,
                  color: context.colors.mainGreen,
                    onTap: () => controller.confirmReplacement(context),
                  ),
                ),
                Expanded(
                  child: DefaultButton(title: "No",
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
