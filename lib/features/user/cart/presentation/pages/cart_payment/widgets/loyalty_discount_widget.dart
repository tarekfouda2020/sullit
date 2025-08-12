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
                  BlocBuilder<GenericBloc<LoyaltyPointsBalanceDomainModel?>, GenericState<LoyaltyPointsBalanceDomainModel?>>(
                    bloc: controller.loyaltyPointsBalanceBloc,
                    builder: (context, state) {
                      return Text("${state.data == null ? '0' : state.data!.points.toString()} Point = ${state.data == null ? '0:00' : state.data!.amount}",
                        style: AppTextStyle.s12_w700(color: context.colors.primary),
                      );
                    },
                  )

                ],
              ),
              const Spacer(),
              SwitchButtonWidget(switchBloc: controller.applyPointsSwitchCubit, controller: controller,),
            ],
          ),
        ),
      ],
    );
  }
}
