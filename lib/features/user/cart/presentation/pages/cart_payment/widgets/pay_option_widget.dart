part of 'cart_payment_widgets_imports.dart';

class PayOptionWidget extends StatelessWidget {
  final CartPaymentController controller;
  final Shipping shipping;
  const PayOptionWidget({super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      // visible: Platform.isAndroid,
      child: Row(
        children: [
          CachedImage(
              url: _selectedPaymentOption().image,
            boxShape: BoxShape.circle,
            haveRadius: false,
            fit: BoxFit.contain,
            width: 35,
            height: 35,
          ),
          Gaps.hGap10,
          Expanded(
            child: Text(_selectedPaymentOption().title,
            style: AppTextStyle.s14_w700(color: context.colors.black)
            ),
          ),
          GestureDetector(
            onTap: () => controller.paymentMethodSheet(context),
            child: Row(
              children: [
                Text(tr("change"),
                    style: AppTextStyle.s14_w400(color: context.colors.primary)
                ),
                Gaps.hGap7,
                Icon(Icons.arrow_forward,color: context.colors.primary)
              ],
            ),
          ),
          // Transform.rotate(
          //     angle: pi,
          //   child: SvgPicture.asset(
          //       Res.arrow,
          //     width: 20, height: 20,
          //     colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
          //   ),
          // )

        ],
      ),
    );
  }


  PaymentOption _selectedPaymentOption() {
    return shipping.paymentOption!.firstWhere((element) => element.selected);
  }


}
