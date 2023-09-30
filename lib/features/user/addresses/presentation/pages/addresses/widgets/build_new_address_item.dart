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
        decoration: CustomDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio<bool>(
              value: false,
              groupValue: !address.selected!,
              onChanged: (val) =>
                  controller.onSelectAddress(context, address, val),
              activeColor: context.colors.primary,
            ),
            Gaps.hGap10,
            Flexible(
              child: Column(
                children: [
                  BuildAddressTitleItem(
                    title: tr('address'),
                    desc: address.address!,
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
                    desc: address.phone ?? "",
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete_outline, color: context.colors.primary),
              onPressed: () => controller.deleteAddress(address),
            )
          ],
        ),
      ),
    );
  }
}
