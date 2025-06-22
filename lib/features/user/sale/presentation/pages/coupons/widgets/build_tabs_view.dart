part of 'coupons_widgets_imports.dart';

class BuildTabsView extends StatelessWidget {
  final CouponsController controller;
  const BuildTabsView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical10PX,
      child: TabBar(
        labelColor: context.colors.primary,
        unselectedLabelColor: context.colors.black,
        labelPadding: Dimens.paddingVertical10PX,
        indicatorColor: context.colors.primary,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          const Text(
            "Pro Offers",
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            tr("newArrival"),
            style:const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            tr("onSale"),
            style:const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            tr("bestRated"),
            style:const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
