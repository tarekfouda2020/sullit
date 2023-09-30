part of 'my_wallet_widgets_imports.dart';

class BuildChargeWallet extends StatelessWidget {
  final MyWalletController controller;

  const BuildChargeWallet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: 3,
      backgroundColor: context.colors.primary,
      onPressed: () => controller.showChargeDialog(context),
      label: Text(
        tr("rechargeWallet"),
        style: AppTextStyle.s14_w500(color: context.colors.white),
      ),
      icon: Icon(
        Icons.add,
        color: context.colors.white,
        size: 25.sp,
      ),
    );
  }
}
