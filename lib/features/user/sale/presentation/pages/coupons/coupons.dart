part of 'coupons_imports.dart';

class Coupons extends StatefulWidget {
  final HomeController homeController;

  const Coupons({Key? key, required this.homeController}) : super(key: key);

  @override
  _CouponsState createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  late CouponsController controller;

  @override
  void initState() {
    controller = CouponsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: BuildHomeAppBar(homeController: widget.homeController),
        body: Column(
          children: const [
            BuildTabsView(),
            Flexible(
              child: TabBarView(
                children: [
                  NewArrival(),
                  OnSale(),
                  BestRated(),
                ],
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
