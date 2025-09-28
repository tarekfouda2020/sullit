part of 'coupons_imports.dart';

class Coupons extends StatefulWidget {
  final HomeController homeController;
  final int index;

  const Coupons({Key? key, required this.homeController, required this.index}) : super(key: key);

  @override
  _CouponsState createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> with TickerProviderStateMixin {
  late CouponsController controller;

  @override
  void initState() {
    super.initState();
    controller = CouponsController();
    controller.homeController = widget.homeController;
    controller.initBottomNavigation(this, widget.index);
  }

  // @override
  // void didUpdateWidget(covariant Coupons oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   print("==========>>>>>> index inside didUpdateWidget widget.index ${widget.index}<<<<<<<<========");
  //   print("==========>>>>>> index inside didUpdateWidget oldWidget.index ${oldWidget.index}<<<<<<<<========");
  //   if (widget.index != oldWidget.index) {
  //     print("==========>>>>>> index inside didUpdateWidget changed ${widget.index}<<<<<<<<========");
  //     // Update the tab controller to the new index
  //     controller.tabController.animateTo(widget.index);
  //   }
  // }

  @override
  void dispose() {
    controller.tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      // appBar: BuildHomeAppBar(homeController: widget.homeController),
      appBar: DefaultAppBar(
        title: tr("offers"),
        showBack: false,
        bgColor: context.colors.white, size: 40,
      ),
      body: Column(
        children: [
          BuildTabsView(controller: controller),
          Flexible(
            child: TabBarView(
              controller: controller.tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: controller.pages(),
            ),
          )
        ],
      ),
      // body: RefreshIndicator(
      //   onRefresh: () => controller.getCoupons(1),
      //   child: PagedGridView<int, Coupon>(
      //     padding: Dimens.paddingAll15PX,
      //     pagingController: controller.pagingController,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisSpacing: 15.r,
      //       mainAxisSpacing: 15.r,
      //       crossAxisCount: 2,
      //       childAspectRatio: .71,
      //     ),
      //     builderDelegate: PagedChildBuilderDelegate<Coupon>(
      //       firstPageProgressIndicatorBuilder: (_) =>
      //           const BuildLoadingCoupons(),
      //       itemBuilder: (_, item, index) => BuildCouponItem(couponModel: item),
      //       noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
      //     ),
      //   ),
      // ),
    );
  }
}
