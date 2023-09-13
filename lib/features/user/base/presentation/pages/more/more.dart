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
      appBar: BuildHomeAppBar(homeController: widget.homeController),
      body: ListView(
        padding: Dimens.paddingAll15PX,
        children: [
          BuildMoreItem(
            title: 'DashBoard',
            icon: Icons.home_outlined,
            onTap: () => controller.checkAuth(context, MoreRoutes.dashboard),
          ),
          BuildMoreItem(
            title: 'Classified products',
            icon: Icons.diamond_outlined,
            onTap: () => controller.checkAuth(
              context,
              MoreRoutes.classifiedProducts,
            ),
          ),
          BuildMoreItem(
            haveStatus: true,
            title: 'Purchased History',
            icon: Icons.file_copy_outlined,
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.purchasedHistory),
          ),
          BuildMoreItem(
            title: 'Return Orders',
            icon: Icons.file_copy_outlined,
            onTap: () => controller.checkAuth(context, MoreRoutes.returnOrders),
          ),
          BuildMoreItem(
            title: 'Downloads',
            icon: Icons.download,
            onTap: () => controller.checkAuth(context, MoreRoutes.downloads),
          ),
          BuildMoreItem(
            title: 'Blogs',
            icon: Icons.list_alt,
            onTap: () => controller.checkAuth(context, MoreRoutes.blogs),
          ),
          BuildMoreItem(
            title: 'WishList',
            icon: Icons.favorite_border,
            onTap: () => controller.checkAuth(context, MoreRoutes.wishlist),
          ),
          BuildMoreItem(
            title: 'Compare',
            icon: Icons.compare_arrows,
            onTap: () => controller.checkAuth(context, MoreRoutes.compare),
          ),
          BuildMoreItem(
            title: 'Track Order',
            icon: Icons.summarize_outlined,
            onTap: () => controller.checkAuth(context, MoreRoutes.trackOrder),
          ),
          // BuildMoreItem(
          //   title: 'Conversation',
          //   icon: Icons.chat,
          //   onTap: () =>
          //       controller.checkAuth(context, MoreRoutes.conversations),
          // ),
          BuildMoreItem(
            title: 'My Wallet',
            icon: Icons.monetization_on_outlined,
            onTap: () => controller.checkAuth(context, MoreRoutes.myWallet),
          ),
          BuildMoreItem(
            title: 'Support Tickets',
            icon: Icons.airplane_ticket_outlined,
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.supportTickets),
          ),
          BuildMoreItem(
            title: 'Manage Profile',
            icon: Icons.person_2_outlined,
            onTap: () => controller.checkAuth(context, MoreRoutes.profile),
          ),
        ],
      ),
    );
  }
}
