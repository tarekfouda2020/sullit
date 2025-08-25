part of 'cart_widgets_imports.dart';

class ChangeCartQtyWidget extends StatefulWidget {
  final CartItem cartItem;
  final CartController controller;

  const ChangeCartQtyWidget({super.key, required this.cartItem, required this.controller});

  @override
  State<ChangeCartQtyWidget> createState() => _ChangeCartQtyWidgetState();
}

class _ChangeCartQtyWidgetState extends State<ChangeCartQtyWidget> {

  final GenericBloc<bool> loadingCubit = GenericBloc(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: loadingCubit,
      builder: (context, state) {
        return Opacity(
          opacity: state.data? 0.3 : 1 ,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BuildCustomBounce(
                onTap: state.data ? (){} : () => widget.controller.onDecreaseCart(widget.cartItem,loadingCubit),
                iconData: CupertinoIcons.minus,
                margin: const EdgeInsetsDirectional.only(end: 19),
                size: 29,
               padding: EdgeInsets.zero,
              ),
              Text(
                widget.cartItem.quantity.toString(),
                style: AppTextStyle.s18_w600(
                  color: context.colors.black,
                ),
              ),
              BuildCustomBounce(
                onTap: state.data ? (){} : () => widget.controller.onIncreaseCart(widget.cartItem,loadingCubit),
                iconData: CupertinoIcons.add,
                margin: const EdgeInsetsDirectional.only(start: 19),
                size: 29,
                padding: EdgeInsets.zero,
              ),
              const Spacer(),
              GestureDetector(
                  onTap: state.data ? (){} : () => widget.controller.deleteItemFromCart(context, widget.cartItem),
                  child: SvgPicture.asset(Res.trashIcon)
              ),
            ],
          ),
        );
      },
    );
  }
}
