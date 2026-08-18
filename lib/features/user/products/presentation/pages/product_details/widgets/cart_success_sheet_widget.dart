part of 'product_details_widgets_imports.dart';

class CartSuccessSheetWidget extends StatefulWidget {
  final CartSheetController controller;
  final void Function()? onPressCheck;
  const CartSuccessSheetWidget({super.key, required this.controller, this.onPressCheck});

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
            child: BlocBuilder<GenericBloc<CartDomainModel>,
                GenericState<CartDomainModel>>(
              bloc: widget.controller.cartItemsBloc,
              builder: (context, state) {
                if (state is GenericUpdateState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Flexible(
                      //     child: ListView.builder(
                      //   itemCount: (state.data.items ?? <CartItem>[]).length,
                      //   itemBuilder: (context, index) {
                      //     return CartSheetItemWidget(
                      //       item: (state.data.items ?? <CartItem>[])[index],
                      //       controller: widget.controller,
                      //     );
                      //   },
                      // )),
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                                (state.data.items ?? <GeneralCartItem>[])
                                    .length, (index) {
                              return CartSheetItemWidget(
                                item: (state.data.items ??
                                    <GeneralCartItem>[])[index],
                                controller: widget.controller,
                              );
                            }),
                          ),
                        ),
                      ),
                      Gaps.vGap16,
                      DefaultButton(
                        title: tr('returnToShop'),
                        onTap: () async {
                          Navigator.pop(context);
                          await Future.delayed(
                              const Duration(milliseconds: 300));
                          BuildContext ctx = getIt<GlobalContext>().context();
                          AutoRouter.of(ctx).pop();
                        },
                        borderColor: context.colors.primary,
                        color: context.colors.white,
                        textColor: context.colors.primary,
                        margin: EdgeInsets.zero,
                      ),
                      Gaps.vGap14,
                      CustomBottomSafeAreaWidget(
                        iosPaddingBottom: 10,
                        child: Opacity(
                          opacity: state.data.minimumStatus == true ? 1 : 0.35,
                          child: DefaultButton(
                            title: "",
                            onTap: state.data.minimumStatus == true
                                ? () => checkOut(state.data)
                                : () {},
                            margin: EdgeInsets.zero,
                            customLabel: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${tr('checkout')} : ",
                                  style: AppTextStyle.s18_w700(
                                      color: context.colors.white),
                                ),
                                Text(
                                  state.data.subTotal ?? "",
                                  style: AppTextStyle.s18_w700(
                                      color: context.colors.white),
                                ).withDirhamSymbol(
                                    symbolStyle: AppTextStyle.s20_w300(
                                        color: context.colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Gaps.vGap10,
                      // Container(
                      //   padding: const EdgeInsets.all(5),
                      //   decoration: BoxDecoration(
                      //     color: context.colors.lightPrimary
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       SvgPicture.asset(Res.redWarningIcon,width: 10,height: 10,),
                      //       Gaps.hGap5,
                      //       DirhamPrice(
                      //           amount: widget.controller.minAmountRemain,
                      //         color: context.colors.white,
                      //       ),
                      //       Gaps.hGap5,
                      //       Text("remain to reach minimum order",
                      //         style: AppTextStyle.s15_w500(color: context.colors.white),
                      //       )
                      //     ],
                      //   ),
                      // )
                    ],
                  );
                } else {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
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
                      BuildShimmerItem(
                        height: 48,
                        width: MediaQuery.sizeOf(context).width,
                        borderRadius: Dimens.borderRadius30PX,
                      ),
                      Gaps.vGap14,
                      BuildShimmerItem(
                        height: 48,
                        width: MediaQuery.sizeOf(context).width,
                        borderRadius: Dimens.borderRadius30PX,
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

  void checkOut(CartDomainModel model) {
    if (model.minimumStatus == false) {
      CustomToast.showSimpleToast(msg: model.minimumAmountMsg!);
      return;
    }

    if(widget.onPressCheck!= null){
      widget.onPressCheck!();
      return;
    }

    AutoRouter.of(context).popAndPush(
        CartRoute(initialIndex: CartNavigateHelper.shippingStepIndex));
  }
}
