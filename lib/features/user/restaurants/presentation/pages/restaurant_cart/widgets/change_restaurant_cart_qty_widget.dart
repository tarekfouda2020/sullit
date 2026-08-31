part of 'widgets_imports.dart';

class ChangeRestaurantCartQtyWidget extends StatefulWidget {
  final GeneralCartItem cartItem;
  final RestaurantCartController controller;

  const ChangeRestaurantCartQtyWidget(
      {super.key, required this.cartItem, required this.controller});

  @override
  State<ChangeRestaurantCartQtyWidget> createState() =>
      _ChangeRestaurantCartQtyWidgetState();
}

class _ChangeRestaurantCartQtyWidgetState
    extends State<ChangeRestaurantCartQtyWidget> {
  final GenericBloc<int> qtyCubit = GenericBloc(0);

  @override
  void initState() {
    super.initState();
    qtyCubit.onUpdateData(widget.cartItem.quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BuildCustomBounce(
          onTap: () => widget.controller.whileOnDecreaseCount(context,
              widget.cartItem, widget.cartItem.quantity.toString(), qtyCubit),
          iconData: CupertinoIcons.minus,
          margin: const EdgeInsetsDirectional.only(end: 19),
          size: 29,
          padding: EdgeInsets.zero,
        ),
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: qtyCubit,
            builder: (context, state) {
              return Text(
                state.data.toString(),
                style: AppTextStyle.s18_w600(
                  color: context.colors.black,
                ),
              );
            }),
        BuildCustomBounce(
          onTap: () => widget.controller.whileOnIncreaseCount(context,
              widget.cartItem, widget.cartItem.quantity.toString(), qtyCubit),
          iconData: CupertinoIcons.add,
          margin: const EdgeInsetsDirectional.only(start: 19),
          size: 29,
          padding: EdgeInsets.zero,
        ),
        const Spacer(),
        GestureDetector(
            onTap: () =>
                widget.controller.deleteItemFromCart(context, widget.cartItem),
            child: SvgPicture.asset(Res.trashIcon)),
      ],
    );
  }
}
