part of '../instore_checkout_imports.dart';

class InstoreCouponWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstoreCouponWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr('orVoucherCode'),
          style: AppTextStyle.s14_w400(color: context.colors.primary),
        ),
        GenericTextField(
          hint: tr('enterVoucherCode'),
          controller: controller.coupon,
          fieldTypes: FieldTypes.normal,
          action: TextInputAction.done,
          type: TextInputType.text,
          fillColor: context.colors.customBackground,
          suffixIcon: InstoreApplyButtonWidget(
            onPressApply: () => controller.applyCoupon(),
          ),
          margin: Dimens.paddingVertical8PX,
          validate: (value) => value?.noValidate(),
        ),
      ],
    );
  }
}
