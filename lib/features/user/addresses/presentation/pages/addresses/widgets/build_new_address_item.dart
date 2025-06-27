part of 'addresses_widgets_imports.dart';

class BuildNewAddressItem extends StatelessWidget {
  final Address address;
  final AddressesController controller;

  const BuildNewAddressItem(
      {Key? key, required this.address, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.navigateToEditAddress(context, address),
      child: Container(
        margin: Dimens.paddingVertical5PX,
        padding: Dimens.paddingAll10PX,
        decoration: const CustomDecoration(myBoxShadow: []),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio<bool>(
              value: false,
              groupValue: !address.selected!,
              onChanged: (val) =>
                  controller.onSelectAddress(context, address, val),
              activeColor: context.colors.primary,
              fillColor: MaterialStateProperty.resolveWith<Color>(
                    (states) => states.contains(MaterialState.selected)
                    ? context.colors.primary
                    : context.colors.grey,
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
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
            Column(
              children: [
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
                ),
                GestureDetector(
                    onTap: () => controller.deleteAddress(address),
                    child: SvgPicture.asset(Res.trashIcon)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
