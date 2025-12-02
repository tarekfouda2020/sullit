part of 'my_wallet_widgets_imports.dart';


class SelectedPayOptionWidget extends StatelessWidget {
  final MyWalletController controller;

  const SelectedPayOptionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<WalletTypes>>, GenericState<List<WalletTypes>>>(
      bloc: controller.walletPaymentTypes,
      builder: (context, state) {
        return GestureDetector(
          onTap: () => controller.showPayOptionsSheet(context),
          child: Container(
            padding: Dimens.paddingAll15PX,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius40PX,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    controller.walletTypeModel?.name ?? tr('selectPaymentMethod'),
                    style: AppTextStyle.s15_w500(color: context.colors.black),
                  ),
                ),
                if(controller.walletTypeModel!=null)
                GestureDetector(
                    onTap: () => controller.unSelectPayMethod(context),
                    child: Icon(Icons.close,color: context.colors.black,size: 20,)
                ),
                Gaps.hGap10,
                Icon(Icons.keyboard_arrow_down, color: context.colors.black,
                  size: 20,)
              ],
            ),
          ),
        );
      },
    );
  }
}
