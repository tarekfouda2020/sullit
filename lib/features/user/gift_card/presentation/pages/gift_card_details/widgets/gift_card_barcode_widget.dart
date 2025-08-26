part of 'gift_card_details_widgets_imports.dart';

class GiftCardBarcodeWidget extends StatelessWidget {
  const GiftCardBarcodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap19,
        CachedImage(
          width: 236, height: 74,
            url: "",
          placeHolder: Image.asset(Res.giftCardBarcodePlaceholder),

        ),
      ],
    );
  }
}
