part of 'widgets_imports.dart';

class PharmacyDeliveryTypeItemWidget extends StatelessWidget {
  final PharmacyShippingDomainModel model;
  final PharmacyAddressController controller;
  final VoidCallback onRefresh;

  const PharmacyDeliveryTypeItemWidget({
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
            model.name ?? "",
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          Row(
            spacing: 10,
            children: [
              if (model.activeDelivery == true)
                PharmacyDeliveryOptionWidget(
                  isSelected: model.isDelivery,
                  label: "Delivery",
                  onTap: () {
                    model.deliveryType = DeliveryTypeEnum.delivery;
                    onRefresh();
                  },
                ),
              if (model.activePickup == true)
                PharmacyDeliveryOptionWidget(
                  isSelected: model.isPickup,
                  label: "Pickup",
                  onTap: () {
                    model.deliveryType = DeliveryTypeEnum.pickUp;
                    onRefresh();
                  },
                ),
            ],
          ),
          if (!model.noOption) Gaps.vGap15,
          _buildInfoText(context),
          if (controller.pharmacy?.hasBranches == true &&
              controller.havePrescription) ...[
            Gaps.vGap15,
            PickBranchButtonWidget(
              selectedBranchName: model.selectedBranch?.name,
              onTap: () => controller.showBranchesSheet(context),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoText(BuildContext context) {
    if (model.noOption) {
      return Text(
        model.deliveryMessage ?? "",
        style: AppTextStyle.s15_w600(color: context.colors.textColor),
      );
    }
    if (model.isDelivery) {
      final msg = model.delivery?.transitIn ?? model.deliveryMessage ?? "";
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
