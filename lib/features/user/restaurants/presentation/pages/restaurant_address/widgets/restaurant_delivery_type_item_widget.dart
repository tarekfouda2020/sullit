part of 'widgets_imports.dart';

class RestaurantDeliveryTypeItemWidget extends StatelessWidget {
  final SellerShipping model;
  final RestaurantAddressController controller;
  final VoidCallback onRefresh;

  const RestaurantDeliveryTypeItemWidget({
    super.key,
    required this.model,
    required this.controller,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.gray3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.name,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          Row(
            spacing: 10,
            children: [
              if (model.activeDelivery)
                RestaurantDeliveryOptionWidget(
                  isSelected: model.deliveryType.isDelivery,
                  label: "Delivery",
                  onTap: () {
                    model.deliveryType = DeliveryTypeEnum.delivery;
                    onRefresh();
                  },
                ),
              if (model.activePickup)
                RestaurantDeliveryOptionWidget(
                  isSelected: model.deliveryType.isPickUp,
                  label: "Pickup",
                  onTap: () {
                    model.deliveryType = DeliveryTypeEnum.pickUp;
                    onRefresh();
                  },
                ),
            ],
          ),
          if (model.activeDelivery || model.activePickup) Gaps.vGap15,
          _buildInfoText(context),
        ],
      ),
    );
  }

  Widget _buildInfoText(BuildContext context) {
    final noOption = !model.activeDelivery && !model.activePickup;
    if (noOption) {
      return Text(
        model.deliveryMessage,
        style: AppTextStyle.s15_w600(color: context.colors.textColor),
      );
    }
    if (model.deliveryType.isDelivery) {
      final msg = model.delivery?.transitIn ?? model.deliveryMessage;
      if (msg.isEmpty) return Gaps.empty;
      return Text(
        msg,
        style: AppTextStyle.s15_w600(color: context.colors.textColor),
      );
    }
    final address = model.pickup?.address ?? "";
    if (address.isEmpty) return Gaps.empty;
    return Text(
      address,
      style: AppTextStyle.s15_w600(color: context.colors.textColor),
    );
  }
}
