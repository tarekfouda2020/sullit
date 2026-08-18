part of 'best_sellers_page_imports.dart';

class BestSellersPage extends StatefulWidget {
  const BestSellersPage({super.key});

  @override
  State<BestSellersPage> createState() => _BestSellersPageState();
}

class _BestSellersPageState extends State<BestSellersPage> {
  final BestSellersPageController controller = BestSellersPageController();

  @override
  void initState() {
    super.initState();
    controller.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: tr("sellers"),
        // actions: [
        //   GestureDetector(
        //     onTap: () {},
        //     child: Padding(
        //       padding: const EdgeInsets.all(Dimens.dp5),
        //       child: SvgPicture.asset(
        //         Res.filterIcon,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        children: [
          Gaps.vGap16,
          SellerSearchFiledWidget(controller: controller),
          Gaps.vGap16,
          Expanded(
            child: SellersListWidget(controller: controller),
          ),
        ],
      ),
    );
  }
}
