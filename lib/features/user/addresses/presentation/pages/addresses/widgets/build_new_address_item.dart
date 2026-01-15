part of 'addresses_widgets_imports.dart';

class BuildNewAddressItem extends StatelessWidget {
  final AddressDomainModel address;
  final AddressesController controller;

  const BuildNewAddressItem({Key? key, required this.address, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddressItemWidget(
      onTap: () => controller.navigateToEditAddress(context, address),
      isDelete: true,
      address: address,
      onPressDelete: () {
        controller.deleteAddress(address);
      },
    );
  }
}
// return GestureDetector(
// onTap: () => controller.navigateToEditAddress(context, address),
// child: Container(
// margin: Dimens.paddingVertical5PX,
// padding: Dimens.paddingAll10PX,
// decoration: const CustomDecoration(myBoxShadow: []),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// // Radio<bool>(
// //   value: false,
// //   groupValue: !address.selected!,
// //   onChanged: (val) =>
// //       controller.onSelectAddress(context, address, val),
// //   activeColor: context.colors.primary,
// //   fillColor: MaterialStateProperty.resolveWith<Color>(
// //         (states) => states.contains(MaterialState.selected)
// //         ? context.colors.primary
// //         : context.colors.grey,
// //   ),
// //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
// //   visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
// // ),
// Gaps.hGap10,
// Flexible(
// child: Column(
// children: [
// BuildAddressTitleItem(
// title: tr('address'),
// desc: address.address!,
// ),
// BuildAddressTitleItem(
// title: 'Type',
// desc: address.addressType!,
// ),
// BuildAddressTitleItem(
// title: tr('city'),
// desc: address.cityName ?? "",
// ),
// BuildAddressTitleItem(
// title: tr("state"),
// desc: address.stateName ?? "",
// ),
// if(address.country!=null)
// BuildAddressTitleItem(
// title: tr('country'),
// desc: address.country?.name ?? "",
// ),
// BuildAddressTitleItem(
// title: tr("streetName"),
// desc: address.streetName!,
// ),
// BuildAddressTitleItem(
// title: tr("buildingName"),
// desc: address.buildingName!,
// ),
// BuildAddressTitleItem(
// title: tr("flatNo"),
// desc: address.flatNumber!,
// ),
// // BuildAddressTitleItem(
// //   title: tr('postalCode'),
// //   desc: address.postalCode!,
// // ),
//
// Row(
// children: [
// Expanded(
// child: BuildAddressTitleItem(
// title: tr('phone'),
// desc: getIt<Utilities>().handleFullPhone(context, address.fullPhone ?? ""),
// ),
// ),
// // Visibility(
// //   visible:  address.isActive != true,
// //   child: InkWell(
// //     onTap: () => controller.onActiveAddress(context, address),
// //     child: Container(
// //       padding: Dimens.paddingAll8PX,
// //       margin: const EdgeInsets.only(bottom: 10),
// //       decoration: BoxDecoration(
// //         borderRadius: Dimens.borderRadius5PX,
// //         color: context.colors.primary,
// //       ),
// //       child: Text(
// //         tr('verifyPhone'),
// //         style: AppTextStyle.s12_w300(
// //           color: context.colors.white,
// //         ),
// //       ),
// //     ),
// //   ),
// // ),
// ],
// )
// ],
// ),
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// GestureDetector(
// onTap: () => controller.deleteAddress(address),
// child: SvgPicture.asset(Res.trashIcon)
// ),
// ],
// )
// ],
// ),
// ),
// );
// }
// }
