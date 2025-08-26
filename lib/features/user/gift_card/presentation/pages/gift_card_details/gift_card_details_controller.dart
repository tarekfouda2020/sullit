part of 'gift_card_details_imports.dart';

class GiftCardDetailsController {
  late  bool isMyGiftCard;
  late final int id;
  double? walletBalance;

  final GenericBloc<GiftCardDomainModel?> giftCardDetailsCubit = GenericBloc<GiftCardDomainModel?>(null);
  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(false);

  final GenericBloc<List<PayMethodDomainModel>> payMethodsCubit = GenericBloc<List<PayMethodDomainModel>>([]);

  GiftCardDetailsController(bool myCard, int cardId) {
    isMyGiftCard = myCard;
    id = cardId;
    getWalletAndPayMethods();
    getGiftCardDetails();
  }


  void getWalletAndPayMethods(){
    if(isMyGiftCard == false){
      getPayMethods();
      getWalletData(false);
      getWalletData(true);
    }
  }

  void getGiftCardDetails() async {
    if (isMyGiftCard) {
      myGiftCardDetails();
    } else {
      giftCardDetails();
    }
  }


  Future<void> myGiftCardDetails() async {
    await GetGiftCardSubscriptionsDetails().call(id).then((value) {
      if (value != null) {
        giftCardDetailsCubit.onUpdateData(value);
        refreshCubit.onUpdateData(true);
      }
    });
  }

  Future<void> giftCardDetails() async {
    await GetGiftCardDetails().call(id).then((value) {
      if (value != null) {
        giftCardDetailsCubit.onUpdateData(value);
      }
    });
  }

  Future<void> getPayMethods() async {
    var data = await GetPayMethods().call(NoParams());
    payMethodsCubit.onUpdateData(data);
  }


  void selectPaymentMethod(PayMethodDomainModel model){
    for(var item in payMethodsCubit.state.data){
      item.isSelected = false;
    }
    model.isSelected = true;
    payMethodsCubit.onUpdateData(payMethodsCubit.state.data);

  }

  void showPayMethodsSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) {
        return PayMethodBottomSheetWidget(
          onPressProcess: ()=> byGiftCard(context),
          onSelectItem: (payMethod) => selectPaymentMethod(payMethod),
          payMethodsCubit: payMethodsCubit,
        );
      },
    );
  }

  Future<void> byGiftCard(BuildContext context) async {
    String payMethod = payMethodsCubit.state.data.firstWhere((element) => element.isSelected).paymentTypeKey;
     if(payMethod =="wallet" && isWalletBalanceEnough() == false ){
       CustomToast.showSimpleToast(msg: tr('walletBalanceEmpty'), type: ToastType.error);
      return ;
     }
    var params = _subscribeParams(payMethod);
    Navigator.pop(context);
    getIt<LoadingHelper>().showLoadingDialog();
    await PayGiftCardSubscribe().call(params).then((value) async {
      if (value != null) {
        BuildContext ctx = getIt<GlobalContext>().context();
        if (value.transactionUrl != null) {
          getIt<LoadingHelper>().dismissDialog();
         var result = await AutoRouter.of(ctx).push(PaymentRoute(transactionUrl: value.transactionUrl!));
          // if(result == true){
          //   isMyGiftCard = true;
          //   await  myGiftCardDetails();
          // }
        }
        CustomToast.showSnakeBar(tr("giftCardSubscribed"));
        AutoRouter.of(ctx).pop(true);
      }
      getIt<LoadingHelper>().dismissDialog();
    });
  }

  Future<void> getWalletData(bool param) async {
    await GetMyWallet().call(param).then((value) {
      if (value != null) {
        double? balance = getIt<Utilities>().extractFormattedNumberToDouble(value.walletBalance);
        walletBalance = balance;
      }
    });
  }


  bool onPop(BuildContext context) {
    AutoRouter.of(context).pop(true);
    return true;
  }

  bool isWalletBalanceEnough() {
    var cardPrice = giftCardDetailsCubit.state.data!.price;
    double? pureNumPrice = getIt<Utilities>().extractFormattedNumberToDouble(cardPrice);
    if ((pureNumPrice ?? 0.0) > (walletBalance ?? 0.0)) {
      CustomToast.showSimpleToast(msg: tr('walletBalanceEmpty'), type: ToastType.error);
      return false;
    }else{
      return true;
    }
  }


  PaySubscribeParams _subscribeParams(String paymentMethod) {
    return PaySubscribeParams(paymentMethod: paymentMethod, id: id);
  }
}
