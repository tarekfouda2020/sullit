part of 'shipping_widgets_imports.dart';

class BuildShippingAddressItem extends StatelessWidget {
  final ShippingController controller;

  final Address address;

  const BuildShippingAddressItem(
      {Key? key, required this.controller, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  title: "Address",
                  desc: address.address!,
                ),
                BuildAddressTitleItem(
                  title: "Postal code",
                  desc: address.postalCode!,
                ),
                BuildAddressTitleItem(
                  title: "City",
                  desc: address.city?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: "State",
                  desc: address.state?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: "Country",
                  desc: address.country?.name ?? "",
                ),
                BuildAddressTitleItem(
                  title: "Phone",
                  desc: address.phone ?? "",
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
                  'Verify Phone',
                  style: AppTextStyle.s12_w300(
                    color: context.colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
