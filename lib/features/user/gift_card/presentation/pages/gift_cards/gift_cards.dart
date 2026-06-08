part of 'gift_cards_imports.dart';

class GiftCards extends StatefulWidget {
  const GiftCards({super.key});

  @override
  State<GiftCards> createState() => _GiftCardsState();
}

class _GiftCardsState extends State<GiftCards> {
  final GiftCardsController controller = GiftCardsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("giftCards"),
        elevation: 0,
      ),
      body: Padding(
        padding: Dimens.paddingHorizontal20PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShowMyGiftCardsButtonWidget(controller: controller),
            Text(
              tr("newOffers"),
              style: AppTextStyle.s18_w700(color: context.colors.black),
            ),
            Gaps.vGap9,
            Expanded(
              child: GiftCardsListWidget(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}
