part of 'seller_products_imports.dart';

class SellerProductsPage extends StatefulWidget {
  final Shop? shopModel;
  final int shopId;
  const SellerProductsPage({super.key, this.shopModel, required this.shopId});

  @override
  SellerProductsPageState createState() => SellerProductsPageState();
}

class SellerProductsPageState extends State<SellerProductsPage> {
  late final SellerProductsController controller;

  @override
  void initState() {
    controller =
        SellerProductsController(widget.shopId, shopModel: widget.shopModel);
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
