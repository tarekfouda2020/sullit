// ignore_for_file: library_private_types_in_public_api
part of 'delivery_imports.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  late DeliveryController controller;

  @override
  void initState() {
    controller = DeliveryController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const BuildCustomAppBar(),
      bottomNavigationBar: BuildDeliveryButtons(controller: controller),
      body: Column(
        children: [
          const BuildCartStepper(current: 3),
          Flexible(
            child: GenericListView(
              padding: Dimens.paddingHorizontal15PX,
              type: ListViewType.api,
              cubit: controller.sellerShippingBloc,
              onRefresh: controller.getShippingInfo,
              itemBuilder: (_, index, item) => BuildDeliveryItem(
                shippingModel: item,
                controller: controller,
              ),
            ),
          )
        ],
      ),
    );
  }
}
