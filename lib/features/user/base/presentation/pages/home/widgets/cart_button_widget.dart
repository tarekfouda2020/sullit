part of 'home_widgets_imports.dart';


class CartButtonWidget extends StatelessWidget {
  final HomeController controller;

  const CartButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountCubit, CountState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => controller.routeToCart(context),
          child: Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: context.colors.primary,
                shape: BoxShape.circle,
                border: Border.all(color: context.colors.white, width: 1.5)
            ),
            child: Visibility(
                // visible: state.data.items!=null && (state.data.items??<CartItem>[]).isNotEmpty,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  clipBehavior: Clip.none,
                  children: [
                    SvgPicture.asset(Res.shopCart),
                    if(state.cartCount>0)
                      PositionedDirectional(
                        top:-7 ,
                        end: -8,
                        child: Container(
                          width: 19,
                          height: 19,
                          padding: const EdgeInsets.only(bottom: 2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: context.colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: context.colors.primary,
                                  width: 1.5
                              )
                          ),
                            child: Text("${state.cartCount }",
                              style: AppTextStyle.s11_w500(color: context.colors.primary),
                            )
                        ),
                      )
                  ],
                ),
               ),
          ),
        );
      },
    );
    // return GestureDetector(
    //   onTap: () => controller.routeToCart(context),
    //   child: Container(
    //     width: 70,
    //     height: 70,
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //         color: context.colors.primary,
    //         shape: BoxShape.circle,
    //         border: Border.all(color: context.colors.white, width: 1.5)
    //     ),
    //     child: BlocBuilder<GenericBloc<CartDomainModel>, GenericState<CartDomainModel>>(
    //       bloc: controller.cartItemsBloc,
    //       builder: (context, state) {
    //         return (state.data.items??<CartItem>[]).isNotEmpty
    //             ?Text("${state.data.items?.length}",
    //           style: AppTextStyle.s20_w600(color: context.colors.white),
    //         )
    //             :SvgPicture.asset(Res.shopCart);
    //       },
    //     ),
    //   ),
    // );
  }
}
