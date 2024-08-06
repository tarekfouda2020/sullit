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
          width: MediaQuery.of(context).size.width,
          padding: Dimens.paddingAll15PX,
          margin: Dimens.paddingVertical8PX,
          decoration: BoxDecoration(
            color: context.colors.offWhite,
            border: Border.all(color: context.colors.white),
            borderRadius: Dimens.borderRadius10PX,
          ),
          child: Text(
            tr('chooseDeliveryType'),
            style: AppTextStyle.s15_w700(color: context.colors.black),
          ),
        ),
        Padding(
          padding: Dimens.paddingVertical5PX,
          child: Column(
            children: [
              Row(
                children: [
                  BuildDeliveryTypeItem(
                    title: tr("homeDelivery"),
                    value: 0,
                    groupValue: shipping.deliveryType,
                    onChanged: (val) => controller.onChangeType(shipping, val!),
                  ),
                  Gaps.hGap10,
                  BuildDeliveryTypeItem(
                    title: tr('localPick'),
                    value: 1,
                    groupValue: shipping.deliveryType,
                    onChanged: (val) => controller.onChangeType(shipping, val!),
                  ),
                ],
              ),
              Visibility(
                visible: shipping.deliveryType == 1,
                replacement: Container(
                  margin: Dimens.paddingVertical10PX,
                  padding: Dimens.paddingAll15PX,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colors.greyWhite),
                    borderRadius: Dimens.borderRadius5PX,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        shipping.delivery.transitIn!,
                        style: AppTextStyle.s14_w400(
                          color: context.colors.black,
                        ),
                      ),
                      Text(
                        shipping.delivery.shippingCost!,
                        style: AppTextStyle.s14_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                child: DropdownTextField<Pickup>(
                  title: tr('selectNearestPoint'),
                  hint: tr('selectNearestPoint'),
                  fillColor: context.colors.white,
                  itemAsString: (u) => u.address,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp15),
                  validate: (value) => validateDropDown(context),
                  data: [
                    Pickup(
                      postalCode: shipping.pickup.postalCode,
                      lang: shipping.pickup.lang,
                      lat: shipping.pickup.lat,
                      phone: shipping.pickup.phone,
                      address: shipping.pickup.address,
                      id: shipping.pickup.id,
                    ),
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
