part of 'more_imports.dart';

class MoreController {
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  void checkAuth(BuildContext context, MoreRoutes route) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (auth) {
      _getMoreItemRoute(route, context);
    } else {
      CustomToast.showAuthDialog(context);
    }
  }

  void _getMoreItemRoute(MoreRoutes route, BuildContext context) {
    switch (route) {
      case MoreRoutes.dashboard:
        AutoRouter.of(context).push(const DashBoardRoute());
        break;
      case MoreRoutes.purchasedProducts:
        AutoRouter.of(context).push(const PurchasedOrdersRoute());
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
        AutoRouter.of(context).push( const ProfileRoute());
        break;
      case MoreRoutes.trackOrder:
        return ;
        break;
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
          AutoRouter.of(context).push(const AddressesRoute());
        break;
        case MoreRoutes.allBrands:
          AutoRouter.of(context).push(const BrandsRoute());
        break;
        case MoreRoutes.allCategories:
          AutoRouter.of(context).push(HomeRoute(index: 1));
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
        case MoreRoutes.language:
          showLangBottomSheet(context);
        break;
      case MoreRoutes.test:
        // TODO: Handle this case.
        break;

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


  void setUserLang(BuildContext context, String lang) async {
    getIt<Utilities>().changeLanguage(lang, context);
    Phoenix.rebirth(context);
  }


}
