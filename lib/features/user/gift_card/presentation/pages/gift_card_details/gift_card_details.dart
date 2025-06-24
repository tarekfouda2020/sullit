part of 'gift_card_details_imports.dart';

class GiftCardDetails extends StatefulWidget {
  final bool isMyGiftCard;

  const GiftCardDetails({super.key, required this.isMyGiftCard});

  @override
  State<GiftCardDetails> createState() => _GiftCardDetailsState();
}

class _GiftCardDetailsState extends State<GiftCardDetails> {

  late final GiftCardDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = GiftCardDetailsController(widget.isMyGiftCard);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: widget.isMyGiftCard ? "My Gift Card Details" : "Gift Card Details",
        elevation: 0,
      ),
      body: ListView(
        padding: Dimens.paddingHorizontal20PX,
        children: [
          const BuildHeaderLogo(marginTop: 5, marginBottom: 25),
          GiftCardDetailsWidget(controller: controller),
          GiftCardFooterSectionWidget(controller: controller)
        ],
      ),
    );
  }
}
