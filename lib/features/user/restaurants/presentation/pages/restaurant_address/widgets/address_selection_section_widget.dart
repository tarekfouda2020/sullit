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
        Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: RestaurantAddressListWidget(
                  controller: controller,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
