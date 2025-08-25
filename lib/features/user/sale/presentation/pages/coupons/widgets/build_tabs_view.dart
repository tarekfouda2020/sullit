part of 'coupons_widgets_imports.dart';

class BuildTabsView extends StatelessWidget {
  final CouponsController controller;

  const BuildTabsView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: context.colors.white,
      child: TabBar(
        physics: const AlwaysScrollableScrollPhysics(),
        isScrollable: true,
        labelColor: context.colors.primary,
        unselectedLabelColor: context.colors.black,
        labelPadding: Dimens.paddingH10V10,
        indicatorColor: context.colors.primary,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          const Text(
            textAlign: TextAlign.center,
            "Pro Offers",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            tr("newArrival"),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            tr("onSale"),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            tr("bestRated"),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
