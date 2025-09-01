part of 'vip_memberships_imports.dart';

class VipMembershipsController {

  double? walletBalance;
  final GenericBloc<VipCurrentPlanDomainModel?> currentSubscriptionBloc = GenericBloc(null);
  final GenericBloc<List<PayMethodDomainModel>> payMethodsCubit = GenericBloc<List<PayMethodDomainModel>>([]);
  final GenericBloc<bool> disableChangeButtonCubit = GenericBloc<bool>(true);

  VipMembershipsController(){
    getWalletData(false);
    getWalletData(true);
    getPayMethods();
    getCurrentSubscription(refresh: false);
    getCurrentSubscription();

  }

  VipSubscribeDomainModel  _selectedSubscription() {
    var otherPlans = currentSubscriptionBloc.state.data!.otherSubscriptions;
    return otherPlans.firstWhere((element) => element.isSelected);
  }

  VipSubscribeDomainModel?  _currentSubscription() {
    /// can be null if user is not subscribed in any plan
   return currentSubscriptionBloc.state.data!.currentSubscription;
  }

  VipSubscribeDomainModel _getSelectedOrCurrentSubscription(){
    bool isOtherItemSelected = currentSubscriptionBloc.state.data!.otherSubscriptions.any((element) => element.isSelected);
    if(isOtherItemSelected){
      return _selectedSubscription();
    }else{
      /// use (subscription!) object id for renew the current one
      return _currentSubscription()!.subscription!;
    }
  }

  Future<void> getCurrentSubscription({bool refresh = true}) async {
    var result = await GetCurrentSubscription().call(refresh);
    if (result != null) {
      currentSubscriptionBloc.onUpdateData(result);
    }
  }


  Future<void> getWalletData(bool param) async {
    await GetMyWallet().call(param).then((value) {
      if (value != null) {
        walletBalance = getIt<Utilities>().extractFormattedNumberToDouble(value.walletBalance);
      }
    });
  }


  Future<void> getPayMethods() async {
    NoParams noParams = NoParams();
    var data = await GetMembershipPayMethods().call(noParams);
    payMethodsCubit.onUpdateData(data);
  }




void onPressRenew(BuildContext context){
    List<VipSubscribeDomainModel> otherPlans = currentSubscriptionBloc.state.data?.otherSubscriptions ?? <VipSubscribeDomainModel>[];
   for(var item in otherPlans){
     item.isSelected = false;
   }
   currentSubscriptionBloc.onUpdateData(currentSubscriptionBloc.state.data);
   showPayMethodsSheet(context);
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
          onPressProcess: ()=> subscribeInMembership(context),
          onSelectItem: (payMethod) => selectPaymentMethod(payMethod),
          payMethodsCubit: payMethodsCubit,
        );
      },
    );
  }

  void selectPaymentMethod(PayMethodDomainModel model){
    for(var item in payMethodsCubit.state.data){
      item.isSelected = false;
    }
    model.isSelected = true;
    payMethodsCubit.onUpdateData(payMethodsCubit.state.data);

  }

  void selectMembership(VipSubscribeDomainModel model){
    if(model.isSelected){
      model.isSelected = false;
      disableChangeButtonCubit.onUpdateData(true);
    }else{
      var data = currentSubscriptionBloc.state.data!.otherSubscriptions;
      for(var item in data){
        item.isSelected = false;
      }
      model.isSelected = true;
      disableChangeButtonCubit.onUpdateData(false);
    }
    currentSubscriptionBloc.onUpdateData(currentSubscriptionBloc.state.data);
  }

  Future<void> subscribeInMembership(BuildContext context) async {
    String payMethod = payMethodsCubit.state.data.firstWhere((element) => element.isSelected).paymentTypeKey;
    if(payMethod =="wallet" && isWalletBalanceEnough() == false ){
      CustomToast.showSimpleToast(msg: tr('walletBalanceEmpty'), type: ToastType.error);
      return ;
    }
    removeSelectedPayMethod();
    var params = _subscribeParams(payMethod);
    Navigator.pop(context);
    getIt<LoadingHelper>().showLoadingDialog();
    await PayVipSubscription().call(params).then((value) async {
      if (value != null) {
        BuildContext ctx = getIt<GlobalContext>().context();
        if (value.transactionUrl != null) {
          disableChangeButtonCubit.onUpdateData(true);
         await routeToPaymentPage(ctx, value.transactionUrl!);
        }
        await getCurrentSubscription();
        CustomToast.showSimpleToast(msg: tr("subscribedSuccess"), type: ToastType.success);
      }
      getIt<LoadingHelper>().dismissDialog();
    });
  }

  void removeSelectedPayMethod(){
    for (var element in payMethodsCubit.state.data) {
      element.isSelected = false;
    }
    payMethodsCubit.onUpdateData(payMethodsCubit.state.data);
  }

  Future<void> routeToPaymentPage(BuildContext context,String url)async{
    getIt<LoadingHelper>().dismissDialog();
     await AutoRouter.of(context).push(PaymentRoute(transactionUrl: url));
    // AutoRouter.of(context).pop();
  }

  bool isWalletBalanceEnough() {
    var cardPrice = _getSelectedOrCurrentSubscription().price;
    double? pureNumPrice = getIt<Utilities>().extractFormattedNumberToDouble(cardPrice);
    if ((pureNumPrice ?? 0.0) > (walletBalance ?? 0.0)) {
      CustomToast.showSimpleToast(msg: tr('walletBalanceEmpty'), type: ToastType.error);
      return false;
    }else{
      return true;
    }
  }

  PaySubscribeParams _subscribeParams(String paymentMethod) {
    var id = _getSelectedOrCurrentSubscription().id;
    return PaySubscribeParams(paymentMethod: paymentMethod, id: id);
  }




}