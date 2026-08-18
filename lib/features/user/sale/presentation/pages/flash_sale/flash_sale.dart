part of 'flash_sale_imports.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({Key? key}) : super(key: key);

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  final FlashSaleController controller = FlashSaleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: tr('flashSale'), showBack: true),
      body: GridView(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ).r,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7.r,
          mainAxisSpacing: 7.r,
          childAspectRatio: 9 / 7,
        ),
        children: List.generate(
          11,
          (index) => InkWell(
            onTap: () => AutoRouter.of(context).push(
              SaleDetailsRoute(dealId: 4),
            ),
            child: Image.network(
              "https://globalnews.ca/wp-content/uploads/2018/01/sale-canada.jpg?quality=85&strip=all",
            ),
          ),
        ),
      ),
    );
  }
}
