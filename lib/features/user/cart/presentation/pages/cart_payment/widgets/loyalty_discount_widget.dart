part of 'cart_payment_widgets_imports.dart';

class LoyaltyDiscountWidget extends StatelessWidget {
  final CartPaymentController controller;
  const LoyaltyDiscountWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Res.loyaltyDiscount),
        Gaps.hGap11,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Use Loyalty Points",
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                  Gaps.vGap6,
                  Text("1245 Point = 31.00 AED",
                    style: AppTextStyle.s12_w700(color: context.colors.primary),
                  ),

                ],
              ),
              const Spacer(),
              SwitchButtonWidget(switchBloc: controller.applyLoyaltyPoints),
            ],
          ),
        ),
      ],
    );
  }
}
