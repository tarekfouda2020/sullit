part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyGiftCardAnnotationWidget extends StatelessWidget {
  const PharmacyGiftCardAnnotationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Res.redWarningIcon),
        Gaps.hGap4,
        Flexible(
          child: Text(
            tr("giftCardAnnotation"),
            style: AppTextStyle.s12_w300(color: context.colors.bloodyRed)
                .copyWith(height: 1.3),
          ),
        )
      ],
    );
  }
}
