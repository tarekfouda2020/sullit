part of 'delivery_widgets_imports.dart';

class BuildDeliveryType extends StatelessWidget {
  final DeliveryController controller;
  final SellerShipping shipping;

  const BuildDeliveryType(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 22),
          margin: Dimens.paddingVertical8PX,
          decoration: BoxDecoration(
            color: context.colors.white,
            border: Border.all(color: context.colors.gray3),
            borderRadius: Dimens.borderRadius12PX,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                tr('chooseDeliveryType'),
                style: AppTextStyle.s16_w700(color: context.colors.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: Dimens.paddingVertical5PX,
          child: Column(
            children: [
              Row(
                children: [
                  if(shipping.activeDelivery)
                  BuildDeliveryTypeItem(
                    title: tr("homeDelivery"),
                    value: DeliveryTypeEnum.delivery,
                    groupValue: shipping.deliveryType,
                    onChanged: (val) => controller.onChangeType(shipping, val!),
                  ),
                  if(shipping.activeDelivery)
                  Gaps.hGap10,
                  if(shipping.activePickup)
                  BuildDeliveryTypeItem(
                    title: tr('localPick'),
                    value: DeliveryTypeEnum.pickUp,
                    groupValue: shipping.deliveryType,
                    onChanged: (val) => controller.onChangeType(shipping, val!),
                  ),
                ],
              ),
              Visibility(
                visible: shipping.deliveryType.isPickUp,
                replacement: DeliveryDurationCoastWidget(shipping: shipping,),
                child: DropdownTextField<Pickup>(
                  title: tr('selectNearestPoint'),
                  hint: tr('selectNearestPoint'),
                  fillColor: context.colors.white,
                  itemAsString: (u) => u.address,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp15),
                  validate: (value) => validateDropDown(context),
                  data: [
                    shipping.pickup,
                  ],
                  onChange: (model) => controller.onSelectPoint(model),
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
      ],
    );
  }
}
