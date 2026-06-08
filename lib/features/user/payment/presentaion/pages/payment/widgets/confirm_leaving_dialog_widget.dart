part of 'payment_w_imports.dart';

class ConfirmLeavingDialogWidget extends StatelessWidget {
  final PaymentController controller;
  const ConfirmLeavingDialogWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(15),
      backgroundColor: context.colors.white,
      title: Text(
        tr("confirmation"),
        style: AppTextStyle.s18_w600(color: context.colors.black),
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Res.confirmationAlertIcon),
          Gaps.vGap15,
          Text(
            "You are about to leave payment gateway!",
            style: AppTextStyle.s17_w600(color: context.colors.black)
                .copyWith(height: 1.3),
            textAlign: TextAlign.center,
          ),
          Gaps.vGap20,
          Row(
            spacing: 15,
            children: [
              Expanded(
                child: DefaultButton(
                  title: "Stay",
                  margin: EdgeInsets.zero,
                  onTap: () => controller.onPressStay(context),
                ),
              ),
              Expanded(
                child: DefaultButton(
                  title: "Leave",
                  margin: EdgeInsets.zero,
                  color: context.colors.grey,
                  onTap: () => controller.onPressLeave(context),
                ),
              ),
            ],
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
