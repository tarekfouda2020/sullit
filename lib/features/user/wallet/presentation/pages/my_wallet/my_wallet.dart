part of 'my_wallet_imports.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  late MyWalletController controller;

  @override
  void initState() {
    controller = MyWalletController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  DefaultAppBar(title: tr('myWallet')),
      backgroundColor: context.colors.customBackground,
      body: BlocBuilder<GenericBloc<Wallet?>, GenericState<Wallet?>>(
        bloc: controller.walletBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildWalletDetails(walletBalance: state.data!.walletBalance),
                Padding(
                  padding:  const EdgeInsetsDirectional.only(start: 20),
                  child: Text(tr("transactions"),
                  style: AppTextStyle.s20_w700(color: context.colors.black),
                  ),
                ),
                Gaps.vGap5,
                BuildWalletHistory(
                  controller: controller,
                ),
                // WalletItemWidget()
              ],
            );
          } else {
            return const BuildWalletLoading();
          }
        },
      ),
      bottomNavigationBar: BuildChargeWallet(controller: controller),
    );
  }
}
