part of 'gift_card_details_widgets_imports.dart';

class GiftCardDetailsWidget extends StatelessWidget {
  final GiftCardDetailsController controller;
  const GiftCardDetailsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: Dimens.paddingH35V26,
          margin: const EdgeInsets.only(top: 85),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.colors.darkRed,
                    context.colors.primary,
                  ])
          ),
          child: Column(
            children: [
              Gaps.vGap30,
              GiftCardInfoWidget(controller: controller),
              if(controller.isMyGiftCard)
              const GiftCardBarcodeWidget(),
              if(controller.isMyGiftCard)
              const GiftCardCouponWidget()
            ],
          ),
        ),
        Positioned(
          child: Image.asset(Res.giftCardPlaceholder),
        )
      ],
    );
  }
}
