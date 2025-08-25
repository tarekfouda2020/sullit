// ignore_for_file: library_private_types_in_public_api
part of 'delivery_imports.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key,}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
   final DeliveryController controller = DeliveryController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: context.colors.cartBg,
      appBar:   DefaultAppBar(
          // title: tr("delivery"),
          title: tr("cart"),
          bgColor: context.colors.white),
      body: Column(
        children: [
          const BuildCartStepper(current: 3),
          Flexible(
            // height: MediaQuery.of(context).size.height*0.6,
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
          ),
        ],
      ),
      bottomNavigationBar: BuildDeliveryButtons(controller: controller),
    );

  }
}


