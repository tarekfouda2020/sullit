part of 'widgets_imports.dart';

class PharmacyCartFavIconWidget extends StatefulWidget {
  final GeneralCartItem cartItem;
  final PharmacyCartController controller;

  const PharmacyCartFavIconWidget(
      {super.key, required this.cartItem, required this.controller});

  @override
  State<PharmacyCartFavIconWidget> createState() =>
      _PharmacyCartFavIconWidgetState();
}

class _PharmacyCartFavIconWidgetState extends State<PharmacyCartFavIconWidget> {
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
            onTap: () => ProductsHelper().toggleFavourite(
              id: widget.cartItem.productId,
              loadingBloc: showLoading,
              context: context,
              onRefresh: () {
                setState(() {
                  widget.cartItem.isWishlist = !widget.cartItem.isWishlist;
                });
                widget.controller.cartItemsBloc
                    .onUpdateData(widget.controller.cartItemsBloc.state.data);
              },
            ),
          ),
          child: const LoadingIconWidget(margin: EdgeInsets.zero),
        );
      },
    );
  }
}
