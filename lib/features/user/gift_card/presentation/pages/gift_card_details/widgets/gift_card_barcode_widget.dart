part of 'gift_card_details_widgets_imports.dart';

class GiftCardBarcodeWidget extends StatelessWidget {
  final GiftCardDomainModel model;
  const GiftCardBarcodeWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap19,
        Container(
          color: context.colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: SvgPicture.string(
            getIt<BarcodeService>().generateBarcode(model.code ?? ""),
            width: 236,
            height: 74,
          ),
        ),
      ],
    );
  }
}
