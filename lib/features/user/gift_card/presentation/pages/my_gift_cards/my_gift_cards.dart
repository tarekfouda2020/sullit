part of 'my_gift_cards_imports.dart';

class MyGiftCards extends StatefulWidget {
  const MyGiftCards({super.key});

  @override
  State<MyGiftCards> createState() => _MyGiftCardsState();
}

class _MyGiftCardsState extends State<MyGiftCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "My Gift Cards",elevation: 0,),
      body: ListView.builder(
        padding: Dimens.paddingHorizontal20PX,
        itemCount: 10,
        itemBuilder: (context, index) {
        return const GiftCardItemWidget(isMyGiftCard: true);
      },),
    );
  }
}
