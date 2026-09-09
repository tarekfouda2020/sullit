part of 'delivery_widgets_imports.dart';

class BuildDeliveryItem extends StatelessWidget {
  final SellerShipping shippingModel;
  final DeliveryController controller;

  const BuildDeliveryItem({
    super.key,
    required this.shippingModel,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BuildDeliveryProducts(shippingModel: shippingModel),
        if(!shippingModel.activeDelivery && !shippingModel.activePickup)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("${shippingModel.name} is not available for now",
                  style: AppTextStyle.s15_w600(color: context.colors.black),
                ),
              ),
            ],
          )
          else
        BuildDeliveryType(
          controller: controller,
          shipping: shippingModel,
        ),
      ],
    );
  }
}
