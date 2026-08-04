part of 'my_wallet_widgets_imports.dart';

class BuildChargeWallet extends StatelessWidget {
  final MyWalletController controller;

  const BuildChargeWallet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSafeAreaWidget(
      child: DefaultButton(
        title: "",
        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
        onTap: () => controller.showChargeWalletSheet(context),
        customLabel: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.add,
              color: context.colors.white,
              size: 15.sp,
            ),
            Gaps.hGap4,
            Text(
              tr("chargeWallet"),
              style: AppTextStyle.s18_w700(color: context.colors.white),
            )
          ],
        ),
      ),
    );
  }
}
