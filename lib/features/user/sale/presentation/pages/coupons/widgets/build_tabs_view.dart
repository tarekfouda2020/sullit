part of 'coupons_widgets_imports.dart';

class BuildTabsView extends StatelessWidget {
  final CouponsController controller;

  const BuildTabsView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.white,
      child: TabBar(
        controller: controller.tabController,
        physics: const AlwaysScrollableScrollPhysics(),
        isScrollable: true,
        labelColor: context.colors.primary,
        unselectedLabelColor: context.colors.black,
        unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        //padding: EdgeInsets.only(left: 0.w, right: 1.w),
        tabAlignment: TabAlignment.center,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.zero,
            color: context.colors.white,
            border: Border(bottom: BorderSide(width: 2.5, color: context.colors.primary))),
        labelPadding: const EdgeInsetsDirectional.fromSTEB(15, 10, 10, 10),
        dividerColor: Colors.transparent,
        indicatorColor: context.colors.primary,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Text(
            textAlign: TextAlign.start,
            tr("vipOffers"),
          ),
          Text(
            textAlign: TextAlign.start,
            tr("newArrival"),
          ),
          Text(
            textAlign: TextAlign.start,
            tr("onSale"),
          ),
          Text(
            textAlign: TextAlign.start,
            tr("bestRated"),
          ),
        ],
      ),
    );
  }
}
