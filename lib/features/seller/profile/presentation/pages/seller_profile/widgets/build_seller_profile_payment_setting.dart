part of 'seller_profile_widgets_imports.dart';

class BuildSellerProfilePaymentSetting extends StatelessWidget {
  final SellerProfileController sellerProfileController;

  const BuildSellerProfilePaymentSetting(
      {Key? key, required this.sellerProfileController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ).r,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5).r,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Settings",
            style: AppTextStyle.s16_w500(color: context.colors.black),
            textAlign: TextAlign.start,
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          Text(
            "Cache Payment",
            style: AppTextStyle.s14_w400(color: context.colors.black),
            textAlign: TextAlign.start,
          ),
          Switch(
              value: true,
              onChanged: (v) {},
              inactiveTrackColor: context.colors.greyWhite),
          Text(
            "Bank Payment",
            style: AppTextStyle.s14_w400(color: context.colors.black),
            textAlign: TextAlign.start,
          ),
          Switch(
              value: false,
              onChanged: (v) {},
              inactiveTrackColor: context.colors.greyWhite),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: sellerProfileController.bankNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName,
            label: "Bank Name",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: sellerProfileController.bankAccountNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName,
            label: "Bank Account",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: sellerProfileController.bankAccountNumberController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName,
            label: "Bank Account Number",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: sellerProfileController.bankRoutingNumberController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName,
            label: "Bank Routing Number",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
        ],
      ),
    );
  }
}
