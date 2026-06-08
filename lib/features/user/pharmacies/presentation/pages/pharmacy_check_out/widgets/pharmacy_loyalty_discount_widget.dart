part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyLoyaltyDiscountWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  const PharmacyLoyaltyDiscountWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Res.loyaltyDiscount, color: context.colors.primary),
        Gaps.hGap11,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr("useLoyaltyPoints"),
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                  Gaps.vGap6,
                  BlocBuilder<GenericBloc<LoyaltyPointsBalanceDomainModel?>,
                      GenericState<LoyaltyPointsBalanceDomainModel?>>(
                    bloc: controller.loyaltyPointsBalanceBloc,
                    builder: (context, state) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${state.data == null ? '0' : state.data!.points.toString()} ${tr("point")} = ",
                            style: AppTextStyle.s12_w700(
                                color: context.colors.primary),
                          ),
                          DirhamPrice(
                            amount:
                                state.data == null ? '0' : state.data!.amount,
                            textStyle: AppTextStyle.s12_w700(
                                color: context.colors.primary),
                            currencyStyle: AppTextStyle.s14_w400(
                                color: context.colors.primary),
                            currencyOffset: 0,
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
              const Spacer(),
              PharmacySwitchButtonWidget(
                switchBloc: controller.applyPointsSwitchCubit,
                onToggle: (value) => controller.switchApplyPoints(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
