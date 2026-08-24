part of 'widgets_imports.dart';

class AddressSelectionSectionWidget extends StatelessWidget {
  final RestaurantAddressController controller;

  const AddressSelectionSectionWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Address",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap15,
        Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * 0.47,
            minHeight: MediaQuery.sizeOf(context).height * 0.25,
          ),
          padding: Dimens.paddingAll15PX,
          decoration: CustomDecoration(
            thisColor: context.colors.white,
            radius: Dimens.borderRadius10PX,
            boxBorder: Border.all(
              color: context.colors.borderColor,
            ),
            myBoxShadow: const [],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: RestaurantAddressListWidget(
                  controller: controller,
                ),
              ),
              Gaps.vGap15,
              DefaultButton(
                title: "+ ${tr("addNewAddress")}",
                onTap: () => controller.onAddNewAddress(context),
                color: context.colors.white,
                textColor: context.colors.primary,
                borderColor: context.colors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                margin: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
