part of 'coupons_widgets_imports.dart';

class BuildTabsView extends StatelessWidget {
  final CouponsController controller;

  const BuildTabsView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( vertical: 10),
      color: context.colors.white,
      child: TabBar(
        physics: const AlwaysScrollableScrollPhysics(),
        isScrollable: true,
        labelColor: context.colors.primary,
        unselectedLabelColor: context.colors.black,
        padding: EdgeInsets.zero,
        tabAlignment: TabAlignment.center,
        labelPadding: const EdgeInsetsDirectional.only(end: 20,top: 10,bottom: 10),
        dividerColor: Colors.transparent,
        indicatorColor: context.colors.primary,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
           Text(
            textAlign: TextAlign.start,
            tr("proOffers"),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textAlign: TextAlign.start,
            tr("newArrival"),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textAlign: TextAlign.start,
            tr("onSale"),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textAlign: TextAlign.start,
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
