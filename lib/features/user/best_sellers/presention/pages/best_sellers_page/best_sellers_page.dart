part of 'best_sellers_page_imports.dart';

class BestSellersPage extends StatefulWidget {
  const BestSellersPage({super.key});

  @override
  State<BestSellersPage> createState() => _BestSellersPageState();
}

class _BestSellersPageState extends State<BestSellersPage> {
  
  final BestSellersPageController controller = BestSellersPageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "Best Sellers",
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(Dimens.dp5),
            child: SvgPicture.asset(
              Res.filterIcon,
            ),
          ),
        )
      ],
      ),
      body: Column(
        children: [
          SellerSearchFiledWidget(controller: controller),
          Gaps.vGap16,
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            padding: Dimens.paddingHorizontal20PX,
            itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: SellerCardWidget(),
            );
          },))
        ],
      ),
    );
  }
}

