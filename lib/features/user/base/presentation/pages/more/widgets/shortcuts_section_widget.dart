part of 'more_widgets_imports.dart';

class ShortCutSectionWidget extends StatelessWidget {
  final MoreController controller;

  const ShortCutSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MoreGridViewWidget(
        title: tr("yourShortcuts", context: context),
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            clipBehavior: Clip.none,
            children: [
              BuildMoreItem(
                title: context.isShareHolder
                    ? tr("shareholder_profile")
                    : tr('manageProfile'),
                onTap: () => controller.checkAuth(context, MoreRoutes.profile),
                image: Res.manageProfile,
              ),
              if (context.isShareHolder)
                PositionedDirectional(
                  start: -7,
                  top: -5,
                  child: Container(
                    width: 31,
                    height: 31,
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Color(0xffFFF1D9), shape: BoxShape.circle),
                    child: SvgPicture.asset(Res.crownIcon),
                  ),
                )
            ],
          ),
          // BuildMoreItem(
          //   title: tr('manageProfile'),
          //   onTap: () =>
          //       controller.checkAuth(context, MoreRoutes.purchasedProducts),
          //   image: Res.manageProfile,
          // ),
          BuildMoreItem(
            image: Res.walletLogo,
            title: tr('myWallet'),
            onTap: () => controller.checkAuth(context, MoreRoutes.myWallet),
          ),
          BuildMoreItem(
            image: Res.giftCardsLogo,
            title: tr("giftCards"),
            isSvg: true,
            onTap: () => controller.checkAuth(context, MoreRoutes.giftCards),
          ),
          BuildMoreItem(
            image: Res.wishListLogo,
            title: tr('wishlist'),
            onTap: () => controller.checkAuth(context, MoreRoutes.wishlist),
          ),
          // BuildMoreItem(
          //   image: Res.vouchers,
          //   title: tr('myVouchers'),
          //   isSvg: true,
          //   size: 33,
          //   onTap: () => controller.checkAuth(context, MoreRoutes.myVouchers),
          // ),
          if (!context.isShareHolder)
            BuildMoreItem(
              image: Res.loyaltyIcon,
              title: tr("loyaltyPoints"),
              isSvg: true,
              onTap: () =>
                  controller.checkAuth(context, MoreRoutes.loyaltyPoints),
            ),
          BuildMoreItem(
            title: tr("my_orders"),
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.purchasedProducts),
            image: Res.purchasedHistory,
          ),
          BuildMoreItem(
            image: Res.addAddresses,
            title: tr("myAddresses"),
            isSvg: true,
            onTap: () => controller.checkAuth(context, MoreRoutes.addresses),
          ),
          if (!context.isShareHolder)
            BuildMoreItem(
              image: Res.redVipIcon,
              title: tr("vipSubscription"),
              isSvg: true,
              onTap: () =>
                  controller.checkAuth(context, MoreRoutes.vipSubscription),
            ),
          BuildMoreItem(
            title: tr("returnedOrders"),
            onTap: () => controller.checkAuth(
              context,
              MoreRoutes.returnOrders,
            ),
            image: Res.returnedOrder,
          ),
        ]);
  }
}
