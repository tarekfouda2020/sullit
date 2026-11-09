part of 'gift_card_details_widgets_imports.dart';

class GiftCardInfoWidget extends StatelessWidget {
  final GiftCardDetailsController controller;
  final GiftCardDomainModel model;
  const GiftCardInfoWidget(
      {super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          model.title,
          style: AppTextStyle.s14_w400(color: context.colors.white),
        ),
        Gaps.vGap13,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!controller.isMyGiftCard && model.code != null)
              Text(tr("payOnly"),
                  style: AppTextStyle.s20_w400(color: context.colors.white)),
            if (!controller.isMyGiftCard && model.code != null) Gaps.hGap8,
            DirhamPrice(
              amount: model.price,
              textStyle: AppTextStyle.s30_w800(color: context.colors.gold),
              currencyStyle: AppTextStyle.s32_w400(color: context.colors.gold),
            ),
          ],
        ),
        Gaps.vGap13,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(tr("andGetPurchasesWith"),
                style: AppTextStyle.s18_w400(color: context.colors.white)),
            Gaps.hGap2,
            DirhamPrice(
              amount: model.value,
              textStyle: AppTextStyle.s18_w700(color: context.colors.gold),
              currencyStyle: AppTextStyle.s20_w400(color: context.colors.gold),
              currencyOffset: 0,
            ),
          ],
        ),
        Gaps.vGap13,
        Text("${tr("validForDays")} ${_validateDays(model)} ${tr("days")}",
            style: AppTextStyle.s18_w400(color: context.colors.white)),
      ],
    );
  }

  int _validateDays(GiftCardDomainModel model) {
    return model.expiredInDays ?? model.validateDays;
  }
}
