part of 'loyalty_points_widgets_imports.dart';

class LoyaltyPointsInfo extends StatelessWidget {
  final LoyaltyPointsController controller;

  const LoyaltyPointsInfo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<LoyaltyPointsBalanceDomainModel?>, GenericState<LoyaltyPointsBalanceDomainModel?>>(
      bloc: controller.loyaltyPointsBalanceBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          //return const LoyaltyPointsInfoLoadingWidget();
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 12),
            margin: Dimens.marginBottom20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                  context.colors.darkRed,
                  context.colors.primary,
                ])),
            child: Column(
              children: [
                Text(
                  tr("yourLoyaltyPointsBalance"),
                  style: AppTextStyle.s16_w400(color: context.colors.white),
                ),
                Gaps.vGap12,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.data == null ? '0' : state.data!.points.toString(),
                      style: AppTextStyle.s28_w800(color: context.colors.gold),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 7,start: 3),
                      child: Text(
                        tr("point"),
                        style: AppTextStyle.s20_w400(color: context.colors.gold),
                      ),
                    ),
                    Gaps.hGap12,
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "=",
                        style: AppTextStyle.s28_w800(color: context.colors.gold),
                      ),
                    ),
                    Gaps.hGap16,
                    DirhamPrice(
                      amount: state.data == null ? '0:00' : state.data!.amount.rawPrice,
                      currencyStyle: AppTextStyle.s30_w400(color: context.colors.gold),
                      textStyle:AppTextStyle.s28_w800(color: context.colors.gold) ,
                    ),
                    Gaps.hGap3,
                  ],
                ),
                // Gaps.vGap19,
                // Container(
                //   color: context.colors.white,
                //   padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                //   child: SvgPicture.string(
                //     getIt<BarcodeService>().generateBarcode(state.data?.amount.rawPrice ?? ""),
                //     width: 236, height: 74,
                //   ),
                // ),
              ],
            ),
          );
        } else {
          return const LoyaltyPointsInfoLoadingWidget();
        }
      },
    );
  }
}
