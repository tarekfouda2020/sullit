part of 'seller_dashboard_widgets_imports.dart';

class BuildSellerAppBar extends StatelessWidget implements PreferredSizeWidget {
  final SellerDashboardController sellerDashboardController;

  const BuildSellerAppBar({super.key, required this.sellerDashboardController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: .5,
      backgroundColor: context.colors.white,
      toolbarHeight: 70,
      leading: IconButton(
        onPressed: () =>
            sellerDashboardController.scaffoldKey.currentState!.openDrawer(),
        icon: Icon(
          Icons.menu,
          color: context.colors.black,
          size: 25,
        ),
      ),
      title: Image.asset(Res.logo, height: 30, width: 150),
      actions: [
        OpenContainer(
          closedElevation: 0,
          openElevation: 0,
          closedColor: context.colors.transparent,
          openColor: context.colors.transparent,
          transitionType: ContainerTransitionType.fadeThrough,
          transitionDuration: const Duration(milliseconds: 800),
          closedBuilder: (_, action) => Icon(
            Icons.notifications_none_outlined,
            color: context.colors.black,
            size: 25,
          ),
          openBuilder: (_, action) => const SellerNotifications(),
        ),
        PopupMenuButton(
          color: context.colors.white,
          elevation: 20,
          icon: Icon(
            Icons.translate,
            color: context.colors.primary,
            size: 25,
          ),
          enabled: true,
          onSelected: (int value) {},
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: Text(
                "English",
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Text(
                "Arabic",
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Text(
                "Bangla",
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
