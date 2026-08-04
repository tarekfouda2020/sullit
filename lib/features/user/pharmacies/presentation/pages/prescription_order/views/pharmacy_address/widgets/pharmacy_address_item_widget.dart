part of 'widgets_imports.dart';

class PharmacyAddressItemWidget extends StatelessWidget {
  final PharmacyAddressController controller;
  final AddressDomainModel address;

  const PharmacyAddressItemWidget({
    Key? key,
    required this.controller,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSelected = address.selected ?? false;

    return GestureDetector(
      onTap: () => controller.onSelectAddress(context, address),
      child: Container(
        margin: Dimens.marginBottom12,
        padding: Dimens.paddingAll15PX,
        decoration: CustomDecoration(
          thisColor: isSelected
              ? context.colors.primary.withOpacity(0.1)
              : context.colors.customBackground,
          radius: Dimens.borderRadius10PX,
          boxBorder: Border.all(
            color: isSelected
                ? context.colors.primary
                : context.colors.borderColor,
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.location_on,
                color: context.colors.primary,
                size: 15,
              ),
            ),
            Gaps.hGap15,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gaps.vGap5,
                  Text(
                    address.addressType ?? tr("home"),
                    style: AppTextStyle.s16_w600(color: context.colors.black),
                  ),
                  Gaps.vGap5,
                  Text(
                    "${address.cityName ?? ''} , ${address.stateName ?? ''}",
                    style: AppTextStyle.s14_w500(color: context.colors.textColor),
                  ),
                ],
              ),
            ),
            CustomRadioWidget(
              selected: isSelected,
              size: 18,
              padding: 2,
            ),
          ],
        ),
      ),
    );
  }
}
