// ignore_for_file: library_private_types_in_public_api
part of 'pickup_tab_imports.dart';

class PickupTab extends StatefulWidget {
  final PickupTabController deliveryController;
  const PickupTab({Key? key, required this.deliveryController}) : super(key: key);

  @override
  _PickupTabState createState() => _PickupTabState();
}

class _PickupTabState extends State<PickupTab> {
  late PickupTabController controller;

  @override
  void initState() {
    controller = widget.deliveryController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 300.h,
      child: GenericListView(
        type: ListViewType.api,
        cubit: controller.sellerShippingBloc,
        onRefresh: controller.getShippingInfo,
        itemBuilder: (_, index, item) => PickupSellerBranchWidget(
          shipping: item,
          controller: controller,
        ),
      ),
    );

  }
}


// return Column(
// children: [
// const SellerNameWidget(),
// Gaps.vGap24,
// PickupSellerBranchWidget(controller: controller),
// // SizedBox(
// //   height: MediaQuery.of(context).size.height*0.6,
// //   child: GenericListView(
// //     padding: Dimens.paddingHorizontal15PX,
// //     type: ListViewType.api,
// //     cubit: controller.sellerShippingBloc,
// //     onRefresh: controller.getShippingInfo,
// //     itemBuilder: (_, index, item) => BuildDeliveryItem(
// //       shippingModel: item,
// //       controller: controller,
// //     ),
// //   ),
// // )
// ],
