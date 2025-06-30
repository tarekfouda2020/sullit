part of 'cart_payment_widgets_imports.dart';

class BuildCoupon extends StatelessWidget {
  final CartPaymentController controller;

  const BuildCoupon({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.couponFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Or Voucher Code",
            style: AppTextStyle.s14_w400(color: context.colors.primary),
          ),
          GenericTextField(
            hint: "Enter Voucher Code",
            fieldTypes: FieldTypes.normal,
            controller: controller.coupon,
            action: TextInputAction.done,
            type: TextInputType.text,
            fillColor: context.colors.customBackground,
            suffixIcon: _suffixIcon(context),
            margin: Dimens.paddingVertical8PX,
            validate: (value) => value!.validateEmpty(),
          ),
        ],
      ),
    );
  }

  Widget _suffixIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.applyCoupon(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 14),
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: Dimens.borderRadius30PX,
        ),
        child: Text(
          tr('apply'),
          style: AppTextStyle.s16_w600(color: context.colors.white),
        ),
      ),
    );
  }
}
