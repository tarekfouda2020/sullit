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
            tr("orVoucherCode"),
            style: AppTextStyle.s14_w400(color: context.colors.primary),
          ),
          GenericTextField(
            hint: tr("enterVoucherCode"),
            fieldTypes: FieldTypes.normal,
            controller: controller.coupon,
            action: TextInputAction.done,
            type: TextInputType.text,
            fillColor: context.colors.customBackground,
            suffixIcon:
                ApplyButtonWidget(onPressApply: () => controller.applyCoupon()),
            margin: Dimens.paddingVertical8PX,
            validate: (value) => value!.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
