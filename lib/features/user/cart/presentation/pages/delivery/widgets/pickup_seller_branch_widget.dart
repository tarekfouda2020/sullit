part of 'delivery_widgets_imports.dart';

class PickupSellerBranchWidget extends StatelessWidget {
  final DeliveryController controller;
  final SellerShipping shipping;
  const PickupSellerBranchWidget(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SellerNameWidget(shipping: shipping),
        Gaps.vGap24,
        Text(
          tr("pickupSellerBranch"),
          style: AppTextStyle.s16_w600(color: context.colors.black),
        ),
        Gaps.vGap12,
        if (shipping.activePickup && shipping.pickup != null)
          DropdownTextField<Pickup>(
            title: tr('Select Branch'),
            hint: tr('Select Branch'),
            fillColor: context.colors.white,
            margin: EdgeInsets.zero,
            itemAsString: (u) => u.address,
            validate: (value) => validateDropDown(context),
            data: [
              Pickup(
                postalCode: shipping.pickup!.postalCode,
                lang: shipping.pickup!.lang,
                lat: shipping.pickup!.lat,
                phone: shipping.pickup!.phone,
                address: shipping.pickup!.address,
                id: shipping.pickup!.id,
              ),
            ],
            onChange: (model) => controller.onSelectPoint(model),
          )
        else
          _noBranchesWidget(context),
      ],
    );
  }

  Widget _noBranchesWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 23).r,
      decoration: CustomDecoration(
          myBoxShadow: const [], radius: Dimens.borderRadius12PX),
      child: Text(
        "${tr("noBranchesAvailable")} ${shipping.name}",
        style: AppTextStyle.s14_w600(color: context.colors.black)
            .copyWith(height: 1.5),
      ),
    );
  }
}
