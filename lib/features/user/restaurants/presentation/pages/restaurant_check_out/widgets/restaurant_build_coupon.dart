part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantBuildCoupon extends StatelessWidget {
  final RestaurantCheckOutController controller;

  const RestaurantBuildCoupon({super.key, required this.controller});

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
            suffixIcon: RestaurantApplyButtonWidget(
                onPressApply: () => controller.applyCoupon()),
            margin: Dimens.paddingVertical8PX,
            validate: (value) => value!.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
