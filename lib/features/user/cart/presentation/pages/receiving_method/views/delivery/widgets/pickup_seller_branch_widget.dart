part of 'delivery_widgets_imports.dart';

class PickupSellerBranchWidget extends StatelessWidget {
  final DeliveryController controller;
  const PickupSellerBranchWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pickup Seller Branch",
        style: AppTextStyle.s16_w600(color: context.colors.black),
        ),
        Gaps.vGap5,
        AbsorbPointer(
          absorbing: false,
          child: DropdownTextField<String>(
            dropKey: controller.sellerBranchKey,
            title: "Select Branch",
            label: "Select Branch",
            margin: Dimens.paddingVertical10PX,
            itemAsString: (item) => item,
            fillColor: context.colors.white,
            textSize: 16.sp,
            useName: true,
            // onFind: (data) { return "";},
            fontSize: 16.sp,
            onChange: (value) {},
            validate: (value) => validateDropDown(value),
            contentPadding: const EdgeInsetsDirectional.only(start: 32,end: 29),
          ),
        ),
      ],
    );
  }
}
