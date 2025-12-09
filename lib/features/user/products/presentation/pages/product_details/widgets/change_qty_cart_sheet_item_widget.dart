part of 'product_details_widgets_imports.dart';

class ChangeQtyCartSheetItemWidget extends StatefulWidget {
  final CartItem cartItem;
  final CartSheetController controller;
  const ChangeQtyCartSheetItemWidget({super.key, required this.cartItem, required this.controller});

  @override
  State<ChangeQtyCartSheetItemWidget> createState() => _ChangeQtyCartSheetItemWidgetState();
}

class _ChangeQtyCartSheetItemWidgetState extends State<ChangeQtyCartSheetItemWidget> {


  final GenericBloc<bool> loadingCubit = GenericBloc(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: loadingCubit,
      builder: (context, state) {
        return Opacity(
          opacity: state.data? 0.3 : 1 ,
          child: Row(
            children: [
              BuildCustomBounce(
                onTap: state.data ? (){} : () => widget.controller.onDecreaseCart(context,widget.cartItem,loadingCubit),
                iconData: CupertinoIcons.minus,
                margin: Dimens.paddingEnd19,
                padding: EdgeInsets.zero,
                size: Dimens.dp29,
              ),
              Text(
                widget.cartItem.quantity.toString(),
                style: AppTextStyle.s18_w600(
                  color: context.colors.black,
                ),
              ),
              BuildCustomBounce(
                onTap: state.data ? (){} :() => widget.controller.onIncreaseCart(context,widget.cartItem,loadingCubit),
                iconData: CupertinoIcons.add,
                margin: Dimens.paddingStart19,
                padding: EdgeInsets.zero,
                size: Dimens.dp29,
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
