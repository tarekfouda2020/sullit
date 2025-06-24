part of 'gift_cards_widgets_imports.dart';


class ShowMyGiftCardsButtonWidget extends StatelessWidget {
  final GiftCardsController controller;
  const ShowMyGiftCardsButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        onTap: () => controller.routeRoMyGiftCard(context),
        title: "Show My Gift Cards",
        height: 50,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: context.colors.primary,
        textColor: context.colors.white,
        borderRadius: Dimens.borderRadius30PX,
      margin: Dimens.marginBottom18 ,
    );
  }
}
