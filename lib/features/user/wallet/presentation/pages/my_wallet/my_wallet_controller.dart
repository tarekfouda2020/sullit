// ignore_for_file: use_build_context_synchronously

part of 'my_wallet_imports.dart';

class MyWalletController {
  final GenericBloc<Wallet?> walletBloc = GenericBloc(null);
  final GenericBloc<List<WalletTypes>> walletPaymentTypes = GenericBloc([]);
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController amountController = TextEditingController();
  final GlobalKey<DropdownSearchState> walletController = GlobalKey();
  WalletTypes? walletTypeModel;

  final PagingController<int, WalletTransaction> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  MyWalletController() {
    pagingController.addPageRequestListener((pageKey) {
      getTransactions(pageKey, refresh: false);
      getTransactions(pageKey);
    });
    getWallet(refresh: false);
    getWallet();
    getWalletTypes();
  }

  Future<void> getTransactions(int page, {bool refresh = true}) async {
    var params = _historyParams(page, refresh);
    var data = await GetWalletTransactions().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }

  Future<void> getWallet({bool refresh = true}) async {
    var result = await GetMyWallet().call(refresh);
    walletBloc.onUpdateData(result);
  }

  Future<List<WalletTypes>> getWalletTypes({bool refresh = true}) async {
    var data = await GetWalletTypes().call(refresh);
    walletPaymentTypes.onUpdateData(data);
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
        getTransactions(1);
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

  GenericPaginateParams _historyParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

  void showPayOptionsSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      useRootNavigator: true,
      builder: (context) {
        return WalletPayOptionsSheetWidget(controller: this);
      },
    );
  }

  void onSelectPaymentMethod(WalletTypes model, BuildContext context) {
    var data = walletPaymentTypes.state.data;
    for (var item in data) {
      item.isSelected = false;
    }
    model.isSelected = true;
    walletTypeModel = model;
    walletPaymentTypes.onUpdateData(data);
    Navigator.pop(context);
  }

  void unSelectPayMethod(BuildContext context) {
    var data = walletPaymentTypes.state.data;
    for (var item in data) {
      item.isSelected = false;
    }
    walletTypeModel = null;
    walletPaymentTypes.onUpdateData(data);
  }

  Future<void> refresh() async {
    getWallet();
    await getTransactions(1);
  }
}
