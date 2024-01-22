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
      case MoreRoutes.purchasedHistory:
        AutoRouter.of(context).push(const PurchasedHistoryRoute());
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
        AutoRouter.of(context).push(const TrackOrderRoute());
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
      case MoreRoutes.test:
        // TODO: Handle this case.
        break;
    }
  }
}
