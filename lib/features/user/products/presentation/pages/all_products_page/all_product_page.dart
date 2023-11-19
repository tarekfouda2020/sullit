part of 'all_product_page_imports.dart';

class AllProductPage extends StatefulWidget {
  final List<Product> bestSellingProducts;

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
        title: 'Just for you',
        showBack: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 50.0,
          crossAxisSpacing: 8.0,
        ),
        itemCount: widget.bestSellingProducts.length,
        itemBuilder: (context, index) {
          return BuildProductItem(
            productModel:widget.bestSellingProducts[index],
            onFavRefresh: () {},
            onCompareRefresh: () {},
          );
        },
      ),
    );
  }
}
