part of 'product_details_widgets_imports.dart';

class CartSuccessSheetWidget extends StatefulWidget {
  final ProductDetailsController controller;

  const CartSuccessSheetWidget({super.key, required this.controller});

  @override
  State<CartSuccessSheetWidget> createState() => _CartSuccessSheetWidgetState();
}

class _CartSuccessSheetWidgetState extends State<CartSuccessSheetWidget> {


  @override
  void initState() {
    super.initState();
    widget.controller.getCartItems(refresh: false);
    widget.controller.getCartItems();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      margin: const EdgeInsets.only(top: kToolbarHeight + 15),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(
            title: tr("cart"),
          ),
          Gaps.vGap20,
          Flexible(
            child: BlocBuilder<GenericBloc<CartDomainModel>, GenericState<CartDomainModel>>(
              bloc: widget.controller.cartItemsBloc,
              builder: (context, state) {
                 if(state is GenericUpdateState){
                  return Column(
                    children: [
                      Flexible(child: ListView.builder(
                        itemCount: (state.data.items ?? <CartItem>[]).length,
                        itemBuilder: (context, index) {
                          return CartSheetItemWidget(
                            item: (state.data.items ?? <CartItem>[])[index],
                            controller: widget.controller,
                          );
                        },
                      )),
                      Gaps.vGap16,
                      DefaultButton(
                        title: tr('returnToShop'),
                        onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
                        borderColor: context.colors.primary,
                        color: context.colors.white,
                        textColor: context.colors.primary,
                        margin: EdgeInsets.zero,
                      ),
                      Gaps.vGap14,
                      DefaultButton(
                        title: "${tr('checkout')} - ${state.data.subTotal}",
                        onTap: () => AutoRouter.of(context).popAndPush(const CartRoute()),
                        margin: EdgeInsets.zero,
                      ),
                      Gaps.vGap10,
                    ],
                  );
                }else{
                   return Column(
                     children: [
                       Flexible(
                         child: ListView.builder(
                           itemCount: 2, // Show 3 shimmer items while loading
                           itemBuilder: (context, index) {
                             return const CartSheetItemShimmerWidget();
                           },
                         ),
                       ),
                       Gaps.vGap16,
                       // Shimmer for buttons
                       BuildShimmerItem(
                         height: 48,
                         width: MediaQuery.of(context).size.width,
                         borderRadius: Dimens.borderRadius30PX,
                       ),
                       Gaps.vGap14,
                       BuildShimmerItem(
                         height: 48,
                         width: MediaQuery.of(context).size.width,
                         borderRadius:Dimens.borderRadius30PX,
                       ),
                       Gaps.vGap10,
                     ],
                   );
                 }
              },
            ),
          )
        ],
      ),
    );
  }
}
