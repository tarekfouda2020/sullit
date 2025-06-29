part of 'more_widgets_imports.dart';

class ShortCutSectionWidget extends StatelessWidget {
  final MoreController controller;
  const ShortCutSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MoreGridViewWidget(
        title: "Your Shortcuts",
        children: [
          BuildMoreItem(
            title: tr('manageProfile'),
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.profile),
            image: Res.manageProfile,
          ),
          BuildMoreItem(
            image: Res.walletLogo,
            title: tr('myWallet'),
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.myWallet),
          ),
          BuildMoreItem(
            image: Res.giftCardsLogo,
            title: "Gift Cards",
            isSvg: true,
            onTap: () => controller.checkAuth(context, MoreRoutes.giftCards),
          ),
          BuildMoreItem(
            image: Res.wishListLogo,
            title: tr('wishlist'),
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.wishlist),
          ),
          BuildMoreItem(
            image: Res.loyaltyIcon,
            title: "Loyalty Points",
            isSvg: true,
            onTap: () => controller.checkAuth(context, MoreRoutes.loyaltyPoints),
          ),
          BuildMoreItem(
            title: tr('purchasedHistory'),
            onTap: () => controller.checkAuth(
                context, MoreRoutes.purchasedHistory),
            image: Res.purchasedHistory,
          ),
          BuildMoreItem(
            image: Res.addAddresses,
            title: "My Addresses",
            isSvg: true,
            onTap: () => controller.checkAuth(context, MoreRoutes.addresses),
          ),
          BuildMoreItem(
            image: Res.redVipIcon,
            title: "VIP Subscription",
            isSvg: true,
            onTap: () => controller.checkAuth(context, MoreRoutes.vipSubscription),
          ),
          BuildMoreItem(
            title: tr("returnedOrders"),
            onTap: () => controller.checkAuth(
              context,
              MoreRoutes.returnOrders,
            ),
            image: Res.returnOrdersLogo,
          ),
        ]
    );
  }
}
