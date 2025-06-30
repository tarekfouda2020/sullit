// ignore_for_file: library_private_types_in_public_api
part of 'delivery_imports.dart';

class Delivery extends StatefulWidget {
  final DeliveryController deliveryController;
  const Delivery({Key? key, required this.deliveryController}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  late DeliveryController controller;

  @override
  void initState() {
    controller = widget.deliveryController;
    controller.getShippingInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const SellerNameWidget(),
        Gaps.vGap24,
        PickupSellerBranchWidget(controller: controller),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height*0.6,
        //   child: GenericListView(
        //     padding: Dimens.paddingHorizontal15PX,
        //     type: ListViewType.api,
        //     cubit: controller.sellerShippingBloc,
        //     onRefresh: controller.getShippingInfo,
        //     itemBuilder: (_, index, item) => BuildDeliveryItem(
        //       shippingModel: item,
        //       controller: controller,
        //     ),
        //   ),
        // )
      ],
    );

  }
}
