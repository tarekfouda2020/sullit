part of 'shipping_widgets_imports.dart';

class BuildShippingAddressItem extends StatelessWidget {
  final ShippingController controller;

  final AddressDomainModel address;

  const BuildShippingAddressItem(
      {Key? key, required this.controller, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onSelectAddress(context, address),
      child: Container(
        margin: Dimens.marginBottom12,
        padding: EdgeInsetsDirectional.only(top: 14.r, start: 20.r, end: 10.r, bottom: 14.r),
        decoration: CustomDecoration(
          boxBorder: Border.all(color: address.selected! ? context.colors.primary : context.colors.borderColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomRadioWidget(selected: address.selected!),
            Gaps.hGap10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildAddressTitleItem(
                    title: tr('address'),
                    desc: address.address!,
                  ),
                  BuildAddressTitleItem(
                    title: tr("type"),
                    desc: address.addressType ?? "",
                  ),
                  BuildAddressTitleItem(
                    title: tr('city'),
                    desc: address.cityName ?? "",
                  ),
                  BuildAddressTitleItem(
                    title: tr("state"),
                    desc: address.stateName ?? "",
                  ),
                  if(address.country!=null)
                  BuildAddressTitleItem(
                    title: tr('country'),
                    desc: address.country?.name ?? "",
                  ),
                   BuildAddressTitleItem(
                    title: tr("streetName"),
                    desc: address.streetName ?? "",
                  ),
                   BuildAddressTitleItem(
                    title: tr("buildingName"),
                    desc: address.buildingName ?? "",
                  ),
                  BuildAddressTitleItem(
                    title: tr("flatNo"),
                    desc: address.flatNumber!,
                  ),
                  // BuildAddressTitleItem(
                  //   title: tr('postalCode'),
                  //   desc: address.postalCode!,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: BuildAddressTitleItem(
                          title: tr('phone'),
                          desc: getIt<Utilities>().handleFullPhone(context, address.fullPhone ?? ""),
                        ),
                      ),
                      // Visibility(
                      //   visible: address.isActive != true,
                      //   child: InkWell(
                      //     onTap: () => controller.onActiveAddress(context, address, address.fullPhone!),
                      //     child: Container(
                      //       padding: Dimens.paddingAll8PX,
                      //       decoration: BoxDecoration(
                      //         borderRadius: Dimens.borderRadius5PX,
                      //         color: context.colors.primary,
                      //       ),
                      //       child: Text(
                      //         tr('verifyPhone'),
                      //         style: AppTextStyle.s12_w300(
                      //           color: context.colors.white,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
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
