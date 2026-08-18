part of 'my_gift_cards_imports.dart';

class MyGiftCards extends StatefulWidget {
  const MyGiftCards({super.key});

  @override
  State<MyGiftCards> createState() => _MyGiftCardsState();
}

class _MyGiftCardsState extends State<MyGiftCards> {
  final MyGiftCardsController controller = MyGiftCardsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("myGiftCards"),
        elevation: 0,
      ),
      body: MyGiftCardsListWidget(controller: controller),
    );
  }
}
