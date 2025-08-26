// ignore_for_file: use_build_context_synchronously

part of 'my_wallet_imports.dart';

class MyWalletController {
  final GenericBloc<Wallet?> walletBloc = GenericBloc(null);
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController amountController = TextEditingController();
  final GlobalKey<DropdownSearchState> walletController = GlobalKey();
  WalletTypes? walletTypeModel;

  MyWalletController() {
    getWallet(refresh: false);
    getWallet();
  }

  Future<void> getWallet({bool refresh = true}) async {
    var result = await GetMyWallet().call(refresh);
    walletBloc.onUpdateData(result);
  }

  Future<List<WalletTypes>> getWalletTypes({bool refresh = true}) async {
    var data = await GetWalletTypes().call(refresh);
    return data;
  }

  void rechargeWallet(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _walletParams();
      var result = await SetRechargeWallet().call(params);
      if (result != "") {
        walletTypeModel = null;
        amountController.clear();
        await AutoRouter.of(context)
            .popAndPush(PaymentRoute(transactionUrl: result));
        getWallet();
      }
    }
  }

  void onChangeType(WalletTypes? model) {
    if (model != null) {
      walletTypeModel = model;
    }
  }

  void showChargeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BuildChargeWalletDialog(controller: this),
    );
  }

  RechargeWalletParams _walletParams() {
    return RechargeWalletParams(
      amount: amountController.text,
      walletType: walletTypeModel?.paymentTypeKey,
    );
  }

  void showChargeWalletSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ChargeWalletSheetWidget(controller: this),
    );
  }
}
