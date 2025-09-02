part of 'gift_card_details_widgets_imports.dart';

class GiftCardFooterSectionWidget extends StatelessWidget {
  final GiftCardDetailsController controller;
  const GiftCardFooterSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: controller.isMyGiftCard,
      replacement: DefaultButton(
        onTap: () => controller.showPayMethodsSheet(context),
        title: "Buy Now",
        color: context.colors.primary,
        textColor: context.colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 50,
        borderRadius: Dimens.borderRadius30PX,
        margin: Dimens.marginTop22,
      ),
      // child:  CardAvailablePrice(controller: controller),
      child:  Gaps.empty,
    );
  }
}
