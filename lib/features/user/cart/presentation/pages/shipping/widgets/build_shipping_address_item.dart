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
        decoration: const CustomDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomRadioWidget(selected: address.selected!),
            Gaps.hGap10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: BuildAddressTitleItem(
                          title: tr('address'),
                          desc: address.address!,
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
                   BuildAddressTitleItem(
                    title: 'Type',
                    desc: address.addressType ?? "",
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
                    title: 'Street Name',
                    desc: address.streetName ?? "",
                  ),
                   BuildAddressTitleItem(
                    title: 'Building Name',
                    desc: address.buildingName ?? "",
                  ),
                   BuildAddressTitleItem(
                    title: 'Flat No.',
                    desc: address.buildingName!,
                  ),
                  // BuildAddressTitleItem(
                  //   title: tr('postalCode'),
                  //   desc: address.postalCode!,
                  // ),
                  BuildAddressTitleItem(
                    title: tr('phone'),
                    desc: address.fullPhone ?? "",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
