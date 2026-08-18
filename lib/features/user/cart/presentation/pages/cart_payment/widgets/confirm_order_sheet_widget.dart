part of 'cart_payment_widgets_imports.dart';

class ConfirmOrderSheetWidget extends StatelessWidget {
  final CartPaymentController controller;
  final String url;
  const ConfirmOrderSheetWidget(
      {super.key, required this.controller, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BottomSheetHeaderWidget(
            title: tr("orderCreated"),
            onClose: () => controller.navigateToHome(context),
          ),
          Gaps.vGap12,
          Text(
            tr("orderCreatedSuccess"),
            style: AppTextStyle.s15_w400(color: context.colors.black)
                .copyWith(height: 1.4),
          ),
          Gaps.vGap20,
          DefaultButton(
            title: tr("proceedToPayment"),
            onTap: () => controller.goToPay(url, context),
          ),
        ],
      ),
    );
  }
}
