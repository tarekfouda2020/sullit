part of 'seller_products_imports.dart';

class SellerProductsPage extends StatefulWidget {
  final Shop shopModel;

  const SellerProductsPage({super.key, required this.shopModel});

  @override
  SellerProductsPageState createState() => SellerProductsPageState();
}

class SellerProductsPageState extends State<SellerProductsPage> {
  late SellerProductsController controller;

  @override
  void initState() {
    controller = SellerProductsController(widget.shopModel.id ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        key: controller.scaffoldKey,
        drawer: SellerProductsDrawerWidget(controller: controller),
        body: Stack(
          children: [
            const SellerPageBackGroundWidget(),
            CustomScrollView(
              slivers: [
                SellerDetailsAppBar(
                  shopModel: widget.shopModel,
                  controller: controller,
                ),
                SellerProducts(
                  controller: controller,
                ),
                SellerNewProductsLoadingWidget(
                  controller: controller,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
