part of 'shipping_widgets_imports.dart';

class BuildShippingAddressItem extends StatelessWidget {
  final ShippingController controller;

  final Address address;

  const BuildShippingAddressItem(
      {Key? key, required this.controller, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onSelectAddress(context, address),
      child: Container(
        margin: Dimens.marginBottom12,
        padding: EdgeInsetsDirectional.only(top: 14.r,start: 20.r,end: 10.r,bottom: 14.r),
        decoration: CustomDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 20,
              height: 20,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: address.selected! ? context.colors.primary : context.colors.textColor, width: 1.5),
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: address.selected! ? context.colors.primary : Colors.transparent,
                    shape: BoxShape.circle),
              ),
            ),
            Gaps.hGap10,
            Flexible(
              child: Column(
                children: [
                  BuildAddressTitleItem(
                    title: tr('address'),
                    desc: address.address!,
                  ),
                  const BuildAddressTitleItem(
                    title: 'Type',
                    desc: "Business",
                  ),
                  const BuildAddressTitleItem(
                    title: 'Street Name',
                    desc: "Jumeirah",
                  ),
                  const BuildAddressTitleItem(
                    title: 'Building Name',
                    desc: "B 32",
                  ),
                  const BuildAddressTitleItem(
                    title: 'Flat No.',
                    desc: "402",
                  ),
                  BuildAddressTitleItem(
                    title: tr('postalCode'),
                    desc: address.postalCode!,
                  ),
                  BuildAddressTitleItem(
                    title: tr('city'),
                    desc: address.city?.name ?? "",
                  ),
                  BuildAddressTitleItem(
                    title: tr("state"),
                    desc: address.state?.name ?? "",
                  ),
                  BuildAddressTitleItem(
                    title: tr('country'),
                    desc: address.country?.name ?? "",
                  ),
                  BuildAddressTitleItem(
                    title: tr('phone'),
                    desc: address.fullPhone ?? "",
                  )
                ],
              ),
            ),
            Visibility(
              visible: address.isActive != true,
              child: InkWell(
                onTap: () => controller.onActiveAddress(context, address),
                child: Container(
                  padding: Dimens.paddingAll8PX,
                  decoration: BoxDecoration(
                    borderRadius: Dimens.borderRadius5PX,
                    color: context.colors.primary,
                  ),
                  child: Text(
                    tr('verifyPhone'),
                    style: AppTextStyle.s12_w300(
                      color: context.colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
