part of 'seller_products_imports.dart';

class SellerProductsPage extends StatefulWidget {
  final Shop? shopModel;
  final int shopId;
  final bool? fromCart;

  const SellerProductsPage({
    super.key,
    this.shopModel,
    required this.shopId,
    this.fromCart = false,
  });

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
        bottomNavigationBar: BlocBuilder<GenericBloc<CartDomainModel>,
            GenericState<CartDomainModel>>(
          bloc: controller.cartItemsBloc,
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 12,
                children: [
                  Opacity(
                    opacity: controller.cartHaveSellerProduct()
                        ? 1
                        :0.5,
                    child: DefaultButton(
                      title: "View Cart",
                      margin: EdgeInsets.zero,
                      onTap:  () => controller.onPressViewCart(context,widget.fromCart!),
                    ),
                  ),
                  Visibility(
                    visible: controller.neededAmount() > 0,
                    child: Row(
                      children: [
                        DirhamPrice(
                        amount: controller.neededAmount().toStringAsFixed(2)
                        ),
                        Text(
                          " needed to reach min amount",
                          style: AppTextStyle.s16_w500(
                              color: context.colors.primary),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
