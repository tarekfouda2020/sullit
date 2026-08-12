part of '../instore_checkout_imports.dart';

class InstoreGiftCardAnnotationWidget extends StatelessWidget {
  const InstoreGiftCardAnnotationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Res.redWarningIcon),
        Gaps.hGap4,
        Flexible(
          child: Text(
            tr('giftCardAnnotation'),
            style: AppTextStyle.s12_w300(color: context.colors.bloodyRed)
                .copyWith(height: 1.3),
          ),
        ),
      ],
    );
  }
}
