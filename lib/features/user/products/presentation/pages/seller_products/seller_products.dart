part of 'seller_products_imports.dart';

class SellerProductsPage extends StatefulWidget {

  const SellerProductsPage({super.key,});

  @override
  SellerProductsPageState createState() => SellerProductsPageState();
}

class SellerProductsPageState extends State<SellerProductsPage> {
  late PopularProductsController controller;

  @override
  void initState() {
    controller = PopularProductsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(
        title: "Munch Corner",
        showBack: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: controller.staticProducts.length,
        itemBuilder: (context, index) {
          return SellerProductItemWidget(
            productModel: controller.staticProducts[index],
            onFavRefresh: () {
              // Handle favorite refresh
            },
          );
        },
      ),
    );
  }
}