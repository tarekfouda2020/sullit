part of 'cart_payment_widgets_imports.dart';

class GiftCardAnnotationWidget extends StatelessWidget {
  const GiftCardAnnotationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Res.redWarningIcon),
        Gaps.hGap4,
        Flexible(
          child: Text(tr("giftCardAnnotation"),
          style: AppTextStyle.s12_w300(color: context.colors.bloodyRed).copyWith(
            height: 1.3
          ),
          ),
        )
      ],
    );
  }
}
