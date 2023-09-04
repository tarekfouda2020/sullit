part of 'cart_payment_widgets_imports.dart';

class BuildCoupon extends StatelessWidget {
  final CartPaymentController controller;

  const BuildCoupon({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.couponFormKey,
      child: GenericTextField(
        hint: "Have Coupon? Enter here",
        fieldTypes: FieldTypes.normal,
        controller: controller.coupon,
        action: TextInputAction.done,
        type: TextInputType.text,
        fillColor: context.colors.white,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp10, vertical: Dimens.dp15),
        suffixIcon: GestureDetector(
          onTap: () => controller.applyCoupon(),
          child: Container(
            width: 70.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: context.colors.primary,
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(5),
              ),
            ),
            child: Text(
              "Apply",
              style: AppTextStyle.s14_w600(color: context.colors.white),
            ),
          ),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        validate: (value) => value!.validateEmpty(),
      ),
    );
  }
}
