part of 'delivery_widgets_imports.dart';

class BuildDeliveryItem extends StatelessWidget {
  final SellerShipping shippingModel;
  final DeliveryController controller;

  const BuildDeliveryItem(
      {super.key, required this.shippingModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BuildDeliveryProducts(shippingModel: shippingModel),
        BuildDeliveryType(
          controller: controller,
          shipping: shippingModel,
        ),
      ],
    );
  }
}
