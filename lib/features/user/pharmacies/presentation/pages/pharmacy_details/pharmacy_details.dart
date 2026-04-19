part of 'pharmacy_details_imports.dart';

class PharmacyDetails extends StatefulWidget {
  final bool? fromCart;
  const PharmacyDetails({super.key, this.fromCart = false});

  @override
  State<PharmacyDetails> createState() => _PharmacyDetailsState();
}

class _PharmacyDetailsState extends State<PharmacyDetails> {
   final PharmacyDetailsController controller = PharmacyDetailsController();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        body:  CustomScrollView(
          slivers: [
            PharmacyDetailsAppBar(
              controller: controller,
            ),
            PharmacyProducts(
              controller: controller,
            ),
            PharmacyNewProductsLoadingWidget(
              controller: controller,
            )
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
                        Opacity(
                          opacity: controller.cartHaveSellerProduct() ? 1 : 0.5,
                          child: DefaultButton(
                            title: tr("view_cart"),
                            margin: EdgeInsets.zero,
                            onTap: () =>
                                controller.onPressViewCart(context, widget.fromCart!),
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
