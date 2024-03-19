part of 'dashboard_widgets_imports.dart';

class BuildDashboardView extends StatelessWidget {
  final Dashboards dashboardModel;

  const BuildDashboardView({super.key, required this.dashboardModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildDashboardItem(
          colors: [
            context.colors.blue,
            context.colors.darkPurple,
          ],
          title: "${dashboardModel.cartCount} ${tr("product")}",
          subTitle: tr("inCart"),
        ),
        BuildDashboardItem(
          colors: [
            context.colors.appBarColor,
            context.colors.blueAccent,
          ],
          title: "${dashboardModel.wishlistCount} ${tr("product")}",
          subTitle: tr("inWishlist"),
        ),
        BuildDashboardItem(
          colors: [
            context.colors.appBarColor,
            context.colors.secondary,
          ],
          title: "${dashboardModel.ordersCount} ${tr("product")}",
          subTitle: tr("youOrdered"),
        )
      ],
    );
  }
}
