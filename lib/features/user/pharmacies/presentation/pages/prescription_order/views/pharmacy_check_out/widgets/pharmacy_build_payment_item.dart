part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyBuildPaymentItem extends StatelessWidget {
  final PaymentOption paymentOptionModel;
  final Function() onTap;

  const PharmacyBuildPaymentItem(
      {super.key, required this.paymentOptionModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color borderColor = paymentOptionModel.selected
        ? context.colors.primary
        : context.colors.greyWhite;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70.h,
          padding: Dimens.paddingAll10PX,
          margin: Dimens.paddingHorizontal5PX,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2),
            borderRadius: Dimens.borderRadius5PX,
          ),
          child: CachedImage(
            height: 70.r,
            width: 70.r,
            fit: BoxFit.contain,
            url: paymentOptionModel.image,
          ),
        ),
      ),
    );
  }
}
