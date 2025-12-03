part of 'membership_subscribe_imports.dart';

class MembershipSubscribeController {
  double? walletBalance;
  VipSubscribeDomainModel? currentSubscription;
  final GenericBloc<bool> termCubit = GenericBloc(false);

  final PagingController<int, VipSubscribeDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  final GenericBloc<bool> isDataLoaded = GenericBloc<bool>(false);
  final GenericBloc<List<PayMethodDomainModel>> payMethodsCubit =
      GenericBloc<List<PayMethodDomainModel>>([]);
  final GenericBloc<SubscribeContentDomainModel?> subscriptionContentBloc =
      GenericBloc(null);
  int pageSize = 12;

  VipSubscribeDomainModel get _selectedSubscription =>
      (pagingController.itemList ?? <VipSubscribeDomainModel>[])
          .firstWhere((element) => element.isSelected);

  MembershipSubscribeController() {
    getCurrentSubscription();
    getSubscriptions(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getSubscriptions(
        pageKey,
      );
    });
    callWalletData();
    getPayMethods();
    getSubscriptionContent();
  }

  void callWalletData() {
    getWalletData(refresh: false);
    getWalletData();
  }

  Future<void> getPayMethods() async {
    NoParams noParams = NoParams();
    var data = await GetMembershipPayMethods().call(noParams);
    payMethodsCubit.onUpdateData(data);
  }

  Future<void> getSubscriptionContent() async {
    NoParams noParams = NoParams();
    var result = await GetSubscriptionContent().call(noParams);
    if (result != null) {
      subscriptionContentBloc.onUpdateData(result);
    }
  }

  Future<void> getSubscriptions(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetSubscriptions()(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
      isDataLoaded.onUpdateData(true);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
      isDataLoaded.onUpdateData(true);
    }
  }

  Future<void> getWalletData({bool refresh = true}) async {
    await GetMyWallet().call(refresh).then((value) {
      if (value != null) {
        double? balance = getIt<Utilities>()
            .extractFormattedNumberToDouble(value.walletBalance);
        walletBalance = balance;
      }
    });
  }

  void showVipPlansBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => VipPlansBottomSheetWidget(controller: this),
    );
  }

  void showPayMethodsSheet(BuildContext context) {
    if (pagingController.itemList!.any((element) => element.isSelected) ==
        false) {
      CustomToast.showSimpleToast(
          msg: tr("selectMembership"), type: ToastType.info);
      return;
    }
    if (!termCubit.state.data) {
      CustomToast.showSimpleToast(msg: tr('acceptTerms'), type: ToastType.info);
      return;
    }
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) {
        return PayMethodBottomSheetWidget(
          onPressProcess: () => subscribeInMembership(context),
          onSelectItem: (payMethod) => selectPaymentMethod(payMethod),
          payMethodsCubit: payMethodsCubit,
        );
      },
    );
  }

  void selectPaymentMethod(PayMethodDomainModel model) {
    for (var item in payMethodsCubit.state.data) {
      item.isSelected = false;
    }
    model.isSelected = true;
    payMethodsCubit.onUpdateData(payMethodsCubit.state.data);
  }

  void updateSelectedMemberShip(VipSubscribeDomainModel model) {
    if (model.byInvite == true) {
      showUnAvailablePlanToast();
      return;
    }

    if (currentSubscription != null) {
      if (!checkCurrentPlanValidation(model)) {
        return;
      }
    }

    var data = pagingController.value.itemList;
    for (var item in data ?? <VipSubscribeDomainModel>[]) {
      item.isSelected = false;
    }
    model.isSelected = true;
    pagingController.itemList =
        List<VipSubscribeDomainModel>.from(pagingController.itemList!);
  }

  bool checkCurrentPlanValidation(VipSubscribeDomainModel model) {
    double currentPlanPrice = double.parse(currentSubscription!.price);
    double selectedPlanPrice = double.parse(model.price);
    if (currentPlanPrice == selectedPlanPrice) {
      CustomToast.showSnakeBar(
          "${tr('already_subscribed_tier')} (${model.name})",
          type: ToastType.info);
      return false;
    }
    if (currentPlanPrice > selectedPlanPrice) {
      CustomToast.showSimpleToast(
          msg:
              "${tr('already_subscribed_with_days')} ${currentSubscription!.name} ${tr('and_still_have')} ${currentSubscription!.expiredInDays} ${tr('day_before_ending')}");
      return false;
    }
    return true;
  }

  Future<void> subscribeInMembership(BuildContext context) async {
    var selectedPayMethod =
        payMethodsCubit.state.data.firstWhere((element) => element.isSelected);
    PayTypeEnum payMethod = selectedPayMethod.getPaymentType();
    if (payMethod == PayTypeEnum.wallet && isWalletBalanceEnough() == false) {
      CustomToast.showSimpleToast(
          msg: tr('walletBalanceEmpty'), type: ToastType.error);
      return;
    }
    var params = _subscribeParams(selectedPayMethod.paymentTypeKey);
    Navigator.pop(context);
    Future.delayed(const Duration(milliseconds: 200));
    Navigator.pop(context);
    getIt<LoadingHelper>().showLoadingDialog();
    await PayVipSubscription().call(params).then((value) async {
      if (value != null) {
        getIt<LoadingHelper>().dismissDialog();
        BuildContext ctx = getIt<GlobalContext>().context();
        if (value.transactionUrl != null) {
          var result = await AutoRouter.of(ctx)
              .push(PaymentRoute(transactionUrl: value.transactionUrl!));
          if (result == true) {
            CustomToast.showSimpleToast(
                msg: tr("subscribedSuccess"), type: ToastType.success);
          }
        } else {
          CustomToast.showSimpleToast(
              msg: tr("subscribedSuccess"), type: ToastType.success);
          AutoRouter.of(ctx).pop();
        }
      }
      getIt<LoadingHelper>().dismissDialog();
    });
  }

  bool isWalletBalanceEnough() {
    var cardPrice = _selectedSubscription.price;
    double? pureNumPrice =
        getIt<Utilities>().extractFormattedNumberToDouble(cardPrice);
    if ((pureNumPrice ?? 0.0) > (walletBalance ?? 0.0)) {
      CustomToast.showSimpleToast(
          msg: tr('walletBalanceEmpty'), type: ToastType.error);
      return false;
    } else {
      return true;
    }
  }

  Future<void> getCurrentSubscription({bool refresh = true}) async {
    var result = await GetCurrentSubscription().call(refresh);
    if (result != null) {
      currentSubscription = result.currentSubscription;
    }
  }

  void showUnAvailablePlanToast() {
    CustomToast.showSnakeBar(tr('tier_not_available'), type: ToastType.info);
  }

  PaySubscribeParams _subscribeParams(String paymentMethod) {
    var id = _selectedSubscription.id;
    return PaySubscribeParams(paymentMethod: paymentMethod, id: id);
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }
}
