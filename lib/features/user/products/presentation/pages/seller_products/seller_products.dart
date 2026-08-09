part of 'seller_products_imports.dart';

class SellerProductsPage extends StatefulWidget {
  final Shop? shopModel;
  final int shopId;
  final bool? fromCart;
  final bool showInStore;
  const SellerProductsPage({
    super.key,
    this.shopModel,
    required this.shopId,
    this.fromCart = false,
     this.showInStore = false,
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
            return KeyboardVisibilityBuilder(
              builder: (context, isOPen) {
                return Visibility(
                  visible: !isOPen,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 12,
                      children: [
                        Row(
                          children: [
                            // if(widget.showInStore)
                            Expanded(
                              child: DefaultButton(
                                title: tr('inStoreShopping'),
                                margin: EdgeInsets.zero,
                                fontSize: 14,
                                onTap: () =>
                                    controller.routeToInstoreShopping(context),
                              ),
                            ),
                            Gaps.hGap12,
                            Expanded(
                              child: Opacity(
                                opacity: controller.cartHaveSellerProduct()
                                    ? 1
                                    : 0.5,
                                child: DefaultButton(
                                  title: tr('view_cart'),
                                  margin: EdgeInsets.zero,
                                  onTap: () => controller.onPressViewCart(
                                    context,
                                    widget.fromCart!,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: controller.neededAmount() > 0,
                          child: Row(
                            children: [
                              DirhamPrice(
                                  amount: controller.neededAmount().toStringAsFixed(2)
                              ),
                              Text(
                                " ${tr("needed_to_reach_minimum_order")}",
                                style: AppTextStyle.s16_w500(
                                    color: context.colors.primary),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            );
          },
        ),
      ),
    );
  }
}
