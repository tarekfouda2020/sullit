part of 'coupons_imports.dart';

class Coupons extends StatefulWidget {
  final HomeController homeController;

  const Coupons({Key? key, required this.homeController}) : super(key: key);

  @override
  _CouponsState createState() => _CouponsState();
}

class _CouponsState extends State<Coupons>{
  late CouponsController controller;

  @override
  void initState() {
    controller = CouponsController();
    controller.homeController = widget.homeController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.pages().length,
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        // appBar: BuildHomeAppBar(homeController: widget.homeController),
        appBar:  DefaultAppBar(title: "Offers",showBack: false,bgColor: context.colors.white,size: 40,),
        body: Column(
          children:  [
             BuildTabsView(controller: controller),
            Flexible(
              child: TabBarView(
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
      ),
    );
  }
}
