part of 'seller_shop_setting_widgets_imports.dart';

class BuildSocialMediaLinks extends StatelessWidget {
  final SellerShopSettingController sellerShopSettingController;

  const BuildSocialMediaLinks(
      {Key? key, required this.sellerShopSettingController})
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Social Media Link ",
          style: AppTextStyle.s16_w500(color: context.colors.black),
          textAlign: TextAlign.start,
        ),
        Gaps.line(context.colors.greyWhite, 20.h),
        GenericTextField(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          validate: (value) => value?.validateAddress(),
          label: "FaceBook",
          hint: "Enter link with https//:",
          margin: const EdgeInsets.symmetric(vertical: 10).r,
        ),
        GenericTextField(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          validate: (value) => value?.validateAddress(),
          label: "Instagram",
          hint: "Enter link with https//:",
          margin: const EdgeInsets.symmetric(vertical: 10).r,
        ),
        GenericTextField(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          validate: (value) => value?.validateAddress(),
          label: "Twitter",
          hint: "Enter link with https//:",
          margin: const EdgeInsets.symmetric(vertical: 10).r,
        ),
        GenericTextField(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          validate: (value) => value?.validateAddress(),
          label: "Google",
          hint: "Enter link with https//:",
          margin: const EdgeInsets.symmetric(vertical: 10).r,
        ),
        GenericTextField(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          validate: (value) => value?.validateAddress(),
          label: "YouTupe",
          hint: "Enter link with https//:",
          margin: const EdgeInsets.symmetric(vertical: 10).r,
        ),
      ]),
    );
  }
}
