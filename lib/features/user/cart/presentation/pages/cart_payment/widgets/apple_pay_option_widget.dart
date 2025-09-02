part of 'cart_payment_widgets_imports.dart';

class ApplePayOptionWidget extends StatelessWidget {
  final CartPaymentController controller;
  const ApplePayOptionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Res.applePay),
        Gaps.hGap10,
        Expanded(
          child: Text("Apple Pay",
              style: AppTextStyle.s14_w700(color: context.colors.black)
          ),
        ),
        Text("Change",
            style: AppTextStyle.s14_w400(color: context.colors.primary)
        ),
        Gaps.hGap7,
        Transform.rotate(
          angle: pi,
          child: SvgPicture.asset(Res.arrowBack,colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn)),
        )

      ],
    );
  }
}
