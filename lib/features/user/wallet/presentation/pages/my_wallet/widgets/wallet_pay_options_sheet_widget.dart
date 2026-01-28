part of 'my_wallet_widgets_imports.dart';


class WalletPayOptionsSheetWidget extends StatelessWidget {
  final MyWalletController controller;
  const WalletPayOptionsSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           BottomSheetHeaderWidget(title: tr('selectPaymentMethod')),
          Gaps.vGap24,
          BlocBuilder<GenericBloc<List<WalletTypes>>,GenericState<List<WalletTypes>>>(
            bloc: controller.walletPaymentTypes,
            builder: (context, state) {
            return Column(
              children: List.generate(state.data.length, (index) {
                var payOption = state.data[index];
                return GestureDetector(
                  onTap: () => controller.onSelectPaymentMethod(payOption,context),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: CustomDecoration(
                        myBoxShadow: const [],
                        boxBorder:
                        Border.all(
                            color: payOption.isSelected ? context.colors.primary : context.colors.borderColor)),
                    child: Row(
                      children: [
                        CustomRadioWidget(
                          selected: payOption.isSelected,
                          inActiveColor: context.colors.black,
                        ),
                        Gaps.hGap14,
                        Expanded(
                          child: Text(payOption.title, style: AppTextStyle.s14_w700(color: context.colors.black)),
                        ),
                        CachedImage(
                          url: payOption.image,
                          width: 30,
                          height: 26,
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                );
              },),
            );
          },)
        ],
      ),
    );
  }
}
