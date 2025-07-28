part of 'gift_card_details_widgets_imports.dart';

class GiftCardInfoWidget extends StatelessWidget {
  final GiftCardDetailsController controller;
  final GiftCardDomainModel model;
  const GiftCardInfoWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(model.title,
        style: AppTextStyle.s14_w400(color: context.colors.white),
        ),
        Gaps.vGap13,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(!controller.isMyGiftCard && model.code != null)
              Text("Pay only", style: AppTextStyle.s20_w400(color: context.colors.white)),
            if(!controller.isMyGiftCard && model.code != null)
              Gaps.hGap8,
            Text(model.price, style: AppTextStyle.s30_w800(color: context.colors.gold)),
          ],
        ),
        Gaps.vGap13,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "and get purchases with",
                style: AppTextStyle.s18_w400(color: context.colors.white)
            ),
            Gaps.hGap2,
            Text(model.value,
                style: AppTextStyle.s18_w700(color: context.colors.gold)
            ),
          ],
        ),
        Gaps.vGap13,
        Text(
            "Valid For ${model.expiredInDays} Days",
            style: AppTextStyle.s18_w400(color: context.colors.white)
        ),
      ],
    );
  }
}
