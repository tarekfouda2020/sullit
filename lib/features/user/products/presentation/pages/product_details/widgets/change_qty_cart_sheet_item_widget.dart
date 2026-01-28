part of 'product_details_widgets_imports.dart';

class ChangeQtyCartSheetItemWidget extends StatefulWidget {
  final CartItem cartItem;
  final CartSheetController controller;
  const ChangeQtyCartSheetItemWidget({super.key, required this.cartItem, required this.controller});

  @override
  State<ChangeQtyCartSheetItemWidget> createState() => _ChangeQtyCartSheetItemWidgetState();
}

class _ChangeQtyCartSheetItemWidgetState extends State<ChangeQtyCartSheetItemWidget> {


  final GenericBloc<int> qntCubit = GenericBloc(0);

  @override
  void initState() {
    super.initState();
    qntCubit.onUpdateData(widget.cartItem.quantity);
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildCustomBounce(
          onTap: () => widget.controller.onDecreaseCart(context,widget.cartItem,qntCubit,widget.cartItem.quantity.toString()),
          iconData: CupertinoIcons.minus,
          margin: Dimens.paddingEnd19,
          padding: EdgeInsets.zero,
          size: Dimens.dp29,
        ),
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc:qntCubit ,
            builder: (context, state) {
              return Text(
                state.data.toString(),
                style: AppTextStyle.s18_w600(
                  color: context.colors.black,
                ),
              );
            }),
        BuildCustomBounce(
          onTap:() => widget.controller.onIncreaseCart(context,widget.cartItem,qntCubit,widget.cartItem.quantity.toString()),
          iconData: CupertinoIcons.add,
          margin: Dimens.paddingStart19,
          padding: EdgeInsets.zero,
          size: Dimens.dp29,
        ),
        const Spacer(),
        GestureDetector(
            onTap:() => widget.controller.deleteItemFromCart(context, widget.cartItem),
            child: SvgPicture.asset(Res.trashIcon)
        ),
      ],
    );
  }
}
