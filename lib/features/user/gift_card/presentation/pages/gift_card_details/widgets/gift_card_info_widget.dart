part of 'gift_card_details_widgets_imports.dart';

class GiftCardInfoWidget extends StatelessWidget {
  final GiftCardDetailsController controller;
  const GiftCardInfoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
            text: TextSpan(children: [
              TextSpan(text: "Save ", style: AppTextStyle.s20_w400(color: context.colors.white)),
              TextSpan(text: "50%", style: AppTextStyle.s20_w700(color: context.colors.white)),
              TextSpan(text: " on your order", style: AppTextStyle.s20_w400(color: context.colors.white)),
            ])),
        Gaps.vGap13,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(!controller.isMyGiftCard)
              Text("Pay only", style: AppTextStyle.s20_w400(color: context.colors.white)),
            if(!controller.isMyGiftCard)
              Gaps.hGap8,
            Text("50.00 AED", style: AppTextStyle.s30_w800(color: context.colors.gold)),
          ],
        ),
        Gaps.vGap13,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("and get purchases with", style: AppTextStyle.s18_w400(color: context.colors.white)),
            Gaps.hGap2,
            Text("100.00 AED", style: AppTextStyle.s18_w700(color: context.colors.gold)),
          ],
        ),
        Gaps.vGap13,
        Text(
            "Valid For 30 Days",
            style: AppTextStyle.s18_w400(color: context.colors.white)
        ),
      ],
    );
  }
}
