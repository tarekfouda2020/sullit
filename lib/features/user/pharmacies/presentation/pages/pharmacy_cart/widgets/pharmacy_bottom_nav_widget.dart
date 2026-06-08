part of 'widgets_imports.dart';

class PharmacyBottomNavWidget extends StatelessWidget {
  final PharmacyCartController controller;
  const PharmacyBottomNavWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      color: context.colors.white,
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            decoration: BoxDecoration(
                color: context.colors.customBackground,
                borderRadius: Dimens.borderRadius8PX),
            child: Row(
              children: [
                CustomCheckBoxWidget(
                    changeValueCubit: controller.haveInsuranceCubit),
                Text(
                  "I’ have a health insurance",
                  style: AppTextStyle.s16_w400(color: context.colors.black),
                )
              ],
            ),
          ),
          BlocBuilder<GenericBloc<CartDomainModel>,
              GenericState<CartDomainModel>>(
            bloc: controller.cartItemsBloc,
            builder: (context, state) {
              final cartData = state.data;
              final hasItems =
                  cartData.items != null && cartData.items!.isNotEmpty;
              return Visibility(
                visible: hasItems,
                child: CustomBottomSafeAreaWidget(
                  child: Row(
                    children: [
                      Expanded(
                        child: DefaultButton(
                          margin: EdgeInsets.zero,
                          color: context.colors.primary,
                          textColor: context.colors.white,
                          title: tr("continue"),
                          onTap: () => controller.navigateToShipping(context),
                        ),
                      ),
                      Gaps.hGap11,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(tr("total"),
                              style: AppTextStyle.s12_w400(
                                  color: context.colors.textColor)),
                          Gaps.vGap6,
                          DirhamPrice(
                            amount:
                                cartData.calculableTotal?.toStringAsFixed(2) ??
                                    "0.00",
                            currencyStyle: AppTextStyle.s18_w400(
                                color: context.colors.primary),
                            textStyle: AppTextStyle.s14_w600(
                                color: context.colors.primary),
                            currencyOffset: 0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
