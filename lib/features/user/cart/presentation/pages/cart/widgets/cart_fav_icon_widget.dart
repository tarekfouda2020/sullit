part of 'cart_widgets_imports.dart';

class CartFavIconWidget extends StatefulWidget {
  final CartItem cartItem;
  final CartController controller;

  const CartFavIconWidget({super.key, required this.cartItem, required this.controller});

  @override
  State<CartFavIconWidget> createState() => _CartFavIconWidgetState();
}

class _CartFavIconWidgetState extends State<CartFavIconWidget> {


  final GenericBloc<bool> showLoading = GenericBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc, GenericState>(
      bloc: showLoading,
      builder: (context, state) {
        return Visibility(
          visible: state.data,
          replacement: BuildIconItem(
            icon: widget.cartItem.isWishlist ? Res.favIcon : Res.emptyFavIcon,
            changeBgColor: false,
            margin: EdgeInsets.zero,
            checkValue: widget.cartItem.isWishlist,
            onTap: () =>
                ProductsHelper().toggleFavourite(
                  id: widget.cartItem.productId,
                  loadingBloc: showLoading,
                  context: context,
                  onRefresh: () {
                    widget.cartItem.isWishlist = !widget.cartItem.isWishlist;
                    widget.controller.cartItemsBloc.onUpdateData(widget.controller.cartItemsBloc.state.data);
                    widget.controller.getCartItems();
                  },
                ),
          ),
          child: const LoadingIconWidget(),
        );
      },
    );
  }
}
