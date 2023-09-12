part of 'coupons_imports.dart';

class Coupons extends StatefulWidget {
  const Coupons({Key? key}) : super(key: key);

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
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Coupons"),
      body: RefreshIndicator(
        onRefresh: () => controller.getCoupons(1),
        child: PagedGridView<int, Coupon>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          builderDelegate: PagedChildBuilderDelegate<Coupon>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingCoupons(),
            itemBuilder: (_, item, index) => BuildCouponItem(couponModel: item),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
