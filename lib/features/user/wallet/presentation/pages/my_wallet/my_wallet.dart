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
      floatingActionButton: BuildChargeWallet(controller: controller),
      body: BlocBuilder<GenericBloc<Wallet?>, GenericState<Wallet?>>(
        bloc: controller.walletBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              padding: Dimens.paddingAll15PX,
              children: [
                BuildWalletDetails(walletBalance: state.data!.walletBalance),
                BuildWalletHistory(
                  walletRechargeHistory: state.data!.rechargeHistory,
                )
              ],
            );
          } else {
            return const BuildWalletLoading();
          }
        },
      ),
    );
  }
}
