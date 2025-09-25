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
        //padding: EdgeInsets.only(left: 0.w, right: 1.w),
        tabAlignment: TabAlignment.center,
        labelPadding: const EdgeInsetsDirectional.symmetric(horizontal: 15,vertical: 10),
        dividerColor: Colors.transparent,
        indicatorColor: context.colors.primary,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
           Text(
            textAlign: TextAlign.start,
            tr("vipOffers"),
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
