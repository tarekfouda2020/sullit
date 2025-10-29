part of 'home_widgets_imports.dart';


class CartButtonWidget extends StatelessWidget {
  final HomeController controller;

  const CartButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.routeToCart(context),
      child: Container(
        width: 70, height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colors.primary,
          shape: BoxShape.circle,
          border: Border.all(color: context.colors.white,width: 1.5)
        ),
        child: SvgPicture.asset(Res.shopCart),
      ),
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
