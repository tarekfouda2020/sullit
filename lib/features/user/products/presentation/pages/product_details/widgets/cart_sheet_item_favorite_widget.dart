part of 'product_details_widgets_imports.dart';

class CartSheetItemFavoriteWidget extends StatefulWidget {
  final CartItem cartItem;
  final ProductDetailsController controller;

  const CartSheetItemFavoriteWidget({super.key, required this.cartItem, required this.controller});

  @override
  State<CartSheetItemFavoriteWidget> createState() => _CartSheetItemFavoriteWidgetState();
}

class _CartSheetItemFavoriteWidgetState extends State<CartSheetItemFavoriteWidget> {
  final GenericBloc<bool> loadingCubit = GenericBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: loadingCubit,
      builder: (context, state) {
        return GestureDetector(
          onTap: () => toggleFavourite(),
          child: Visibility(
            visible: state.data,
            replacement: Container(
              padding: Dimens.paddingAll6PX,
              decoration: CustomDecoration(
                  myBoxShadow: const [],
                  radius: Dimens.borderRadius5PX,
              ),
              child: SvgPicture.asset(widget.cartItem.isWishlist ? Res.favIcon : Res.emptyFavIcon),
            ),
            child: const LoadingIconWidget(margin: EdgeInsets.zero),
          ),
        );
      },
    );
  }

  void toggleFavourite() {
    ProductsHelper().toggleFavourite(
      id: widget.cartItem.productId,
      loadingBloc: loadingCubit,
      context: context,
      onRefresh: () => _refreshSheetAndScreen(),
    );
  }

  void _refreshSheetAndScreen() {
    GenericBloc<CartDomainModel> cartBloc = widget.controller.cartItemsBloc;
    widget.cartItem.isWishlist = !widget.cartItem.isWishlist;
    cartBloc.onUpdateData(cartBloc.state.data);
    widget.controller.updateFavFromSheet(widget.cartItem);
    widget.controller.getCartItems();
    widget.controller.getProductDetails(context, widget.controller.productId, resetQty: false);
  }
}
