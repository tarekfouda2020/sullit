part of 'all_product_page_imports.dart';

class AllProductPage extends StatefulWidget {
  final List<ProductCard> bestSellingProducts;

  const AllProductPage({
    super.key,
    required this.bestSellingProducts,
  });

  @override
  State<AllProductPage> createState() => _AllProductPageState();
}

class _AllProductPageState extends State<AllProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        centerTitle: false,
        title: 'Just for you',
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            const BuildSearchBar(),
            Gaps.vGap16,
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: widget.bestSellingProducts.length,
                itemBuilder: (context, index) {
                  return BuildProductItem(
                    productModel: widget.bestSellingProducts[index],
                    onFavRefresh: () {},
                    onCompareRefresh: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const BuildFloatingAction(),
    );
  }
}
