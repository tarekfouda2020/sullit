part of 'more_imports.dart';

class More extends StatefulWidget {
  final HomeController homeController;

  const More({Key? key, required this.homeController}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  final MoreController controller = MoreController();

  @override
  Widget build(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              Res.logo,
              width: 190,
              height: 40,
            ),
          ),
          Flexible(
            child: GridView(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 120, top: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 107,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              children: [
                BuildMoreItem(
                  title: tr('manageProfile'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.profile),
                  image: Res.manageProfile,
                ),
                BuildMoreItem(
                  image: Res.ticketLogo,
                  title: tr('support'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.support),
                ),
                BuildMoreItem(
                  image: Res.walletLogo,
                  title: tr('myWallet'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.myWallet),
                ),
                BuildMoreItem(
                  title: tr('dashboard'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.dashboard),
                  image: Res.dashboardLogo,
                ),
                BuildMoreItem(
                  title: tr('classifiedProducts'),
                  onTap: () => controller.checkAuth(
                      context, MoreRoutes.classifiedProducts),
                  image: Res.classifiedProduct,
                ),
                BuildMoreItem(
                  title: tr('customersProducts'),
                  onTap: () => controller.checkAuth(
                      context, MoreRoutes.customersProducts),
                  image: Res.customerProducts,
                ),
                BuildMoreItem(
                  title: tr('purchasedHistory'),
                  onTap: () => controller.checkAuth(
                      context, MoreRoutes.purchasedHistory),
                  image: Res.purchasedHistory,
                ),
                BuildMoreItem(
                  title: tr('downloads'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.downloads),
                  image: Res.downloadLogo,
                ),
                BuildMoreItem(
                  title: tr("returnedOrders"),
                  onTap: () => controller.checkAuth(
                    context,
                    MoreRoutes.returnOrders,
                  ),
                  image: Res.returnOrdersLogo,
                ),
                // BuildMoreItem(
                //   image: Res.blogLogo,
                //   haveStatus: true,
                //   title: tr("blogs"),
                //   onTap: () => controller.checkAuth(context, MoreRoutes.blogs),
                // ),
                BuildMoreItem(
                  image: Res.wishListLogo,
                  title: tr('wishlist'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.wishlist),
                ),
                BuildMoreItem(
                  image: Res.compareLogo,
                  title: tr('compare'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.compare),
                ),
                BuildMoreItem(
                  image: Res.trackOrderLogo,
                  title: tr('trackOrder'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.trackOrder),
                ),
                BuildMoreItem(
                  image: Res.ticketLogo,
                  title: tr('supportTickets'),
                  onTap: () =>
                      controller.checkAuth(context, MoreRoutes.supportTickets),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
