part of 'more_imports.dart';

class MoreController {
  final GenericBloc<File?> imageCubit = GenericBloc(null);
  final GenericBloc<bool> refreshNotifyCubit = GenericBloc(false);
  final GenericBloc<List<LangDomainModel>> languagesCubit =
      GenericBloc<List<LangDomainModel>>([]);

  late final HomeController homeController;

  bool wasInBackground = false;

  MoreController(BuildContext context, HomeController controller) {
    // allLanguages(BuildContext context);
    homeController = controller;
    _getLanguages(false);
    _getLanguages(true);
  }

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  void checkAuth(BuildContext context, MoreRoutes route) {
    if (canBePress(route)) {
      _getMoreItemRoute(route, context);
    } else {
      bool auth = context.read<DeviceCubit>().state.model.auth;
      if (auth) {
        _getMoreItemRoute(route, context);
      } else {
        CustomToast.showAuthDialog(context);
      }
    }
  }

  void _getMoreItemRoute(MoreRoutes route, BuildContext context) {
    switch (route) {
      case MoreRoutes.dashboard:
        AutoRouter.of(context).push(const DashBoardRoute());
        break;
      case MoreRoutes.purchasedProducts:
        AutoRouter.of(context).push(const MyOrdersRoute());
        // AutoRouter.of(context).push(const PurchasedHistoryRoute());
        break;
      case MoreRoutes.returnOrders:
        AutoRouter.of(context).push(const ReturnOrdersRoute());
        break;
      case MoreRoutes.downloads:
        AutoRouter.of(context).push(const DownloadsRoute());
        break;
      case MoreRoutes.blogs:
        AutoRouter.of(context).push(const BlogsRoute());
        break;
      case MoreRoutes.wishlist:
        AutoRouter.of(context).push(const WishlistRoute());
        break;
      case MoreRoutes.compare:
        AutoRouter.of(context).push(const CompareRoute());
        break;
      case MoreRoutes.conversations:
        AutoRouter.of(context).push(const ConversationsRoute());
        break;
      case MoreRoutes.myWallet:
        AutoRouter.of(context).push(const MyWalletRoute());
        break;
      case MoreRoutes.supportTickets:
        AutoRouter.of(context).push(const SupportTicketsRoute());
        break;
      case MoreRoutes.profile:
        AutoRouter.of(context).push(const ProfileRoute());
        break;
      case MoreRoutes.trackOrder:
        return;
      case MoreRoutes.classifiedProducts:
        AutoRouter.of(context).push(const ClassifiedProductsRoute());
        break;
      case MoreRoutes.customersProducts:
        AutoRouter.of(context).push(const CustomersProductsRoute());
        break;
      case MoreRoutes.support:
        AutoRouter.of(context).push(const SupportRoute());
        break;
      case MoreRoutes.giftCards:
        AutoRouter.of(context).push(const GiftCardsRoute());
        break;
      case MoreRoutes.vipSubscription:
        AutoRouter.of(context).push(const VipMemberShipsRoute());
        break;
      case MoreRoutes.loyaltyPoints:
        AutoRouter.of(context).push(const LoyaltyPointsRoute());
        break;
      case MoreRoutes.addresses:
        AutoRouter.of(context).push(AddressesRoute());
        break;
      case MoreRoutes.allBrands:
        AutoRouter.of(context).push(const BrandsRoute());
        break;
      case MoreRoutes.allCategories:
        homeController.animateTabsPages(1, context);
        break;
      case MoreRoutes.contactUs:
        AutoRouter.of(context).push(const ContactUsRoute());
        break;
      case MoreRoutes.termsAndConditions:
        AutoRouter.of(context).push(const TermsRoute());
        break;
      case MoreRoutes.privacyPolicy:
        AutoRouter.of(context).push(const PrivacyRoute());
        break;
      case MoreRoutes.supportPolicy:
        AutoRouter.of(context).push(const SupportPolicyRoute());
        break;
      case MoreRoutes.returnPolicy:
        AutoRouter.of(context).push(const ReturnPolicyRoute());
        break;
      case MoreRoutes.myVouchers:
        AutoRouter.of(context).push(const MyVouchersRoute());
        break;
      case MoreRoutes.language:
        showLangBottomSheet(context);
        break;
      case MoreRoutes.test:
        // TODO: Handle this case.
        break;
    }
  }

  bool canBePress(MoreRoutes route) {
    bool isInShopBySection =
        route == MoreRoutes.allBrands || route == MoreRoutes.allCategories;
    bool isOtherSection = route == MoreRoutes.termsAndConditions ||
        route == MoreRoutes.privacyPolicy ||
        route == MoreRoutes.supportPolicy ||
        route == MoreRoutes.returnPolicy ||
        route == MoreRoutes.contactUs ||
        route == MoreRoutes.language;
    if (isInShopBySection || isOtherSection) {
      return true;
    } else {
      return false;
    }
  }

  void showLangBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      backgroundColor: context.colors.white,
      context: context,
      builder: (context) => BuildLangBottomSheet(
        controller: this,
      ),
    );
  }

  Future<void> setUserLang(BuildContext context, LangDomainModel model) async {
    String code = model.code;
    if (code == LangTypeEnum.arabic.getLangCode()) {
      code = LangCodeHelper.langAR;
    }
    if (code == LangTypeEnum.bangladesh.getLangCode()) {
      code = LangCodeHelper.langBN;
    }
    if (code == LangTypeEnum.urdu.getLangCode()) {
      code = LangCodeHelper.langUR;
    }
    // List<LangModel> languages = langRequester.data!;
    // for(var item in languages){
    //   item.isDefault = false;
    // }
    // model.isDefault = true;
    await getIt<Utilities>().changeLanguage(code, context);
    if (context.mounted) {
      context.read<DeviceCubit>().updateLanguage(
        Locale(
          code,
          _getCountryLangCode(code),
        ),
      );
      homeController.animateTabsPages(0,context);
      HomeDomainModel? homeData = OrdersHelper.instance.homeCubit.state.data;
      if( homeData?.currentOrders.isNotEmpty == true ){
        OrdersHelper.instance.getHome(setLoading: false);
      }
    }
  }

  Future<void> _getLanguages(bool refresh) async {
    await GetLanguages().call(refresh).then((value) {
      languagesCubit.onUpdateData(value);
    });
  }

  String getNotificationText() {
    var isEnabled =
        GlobalState.instance.get(GlobalStateKeys.notificationGranted);
    if (isEnabled == true) {
      return tr("notification_active");
    } else {
      return tr("notification_not_active");
    }
  }

  void openNotificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => NotificationDialog(controller: this),
    );
  }

  void openSettings() {
    openAppSettings();
  }

  Future<void> refreshNotificationStatus() async {
    var status = await Permission.notification.status;
    bool isGranted = status.isGranted || status.isProvisional;
    GlobalState.instance.set(GlobalStateKeys.notificationGranted, isGranted);
    refreshNotifyCubit.onUpdateData(true);
    if(isGranted){
      getIt<GlobalNotification>().setupNotification();
    }
  }
// void callLanguages(BuildContext context) {
//   //   bool isAuth = context.read<DeviceCubit>().state.model.auth;
//   //   if (isAuth) {
//   //    _getLanguages(false);
//   //       _getLanguages(true);
//   //   }
//   // }

  String _getCountryLangCode(String code) {
    switch (code) {
      case LangCodeHelper.langAR:
        return "SA";
      case LangCodeHelper.langEN:
        return "US";
      case LangCodeHelper.langBN:
        return "BD";
      case LangCodeHelper.langUR:
        return "PK";
      default:
        return "US";
    }
  }
}
