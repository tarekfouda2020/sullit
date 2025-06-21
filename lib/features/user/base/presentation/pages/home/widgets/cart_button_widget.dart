part of 'home_widgets_imports.dart';


class CartButtonWidget extends StatelessWidget {
  final HomeController controller;
  const CartButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.routeToCart(context),
      child: Container(
        width: 62, height: 62,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colors.primary,
          shape: BoxShape.circle,
          border: Border.all(color: context.colors.white,width: 1.5)
        ),
        child: SvgPicture.asset(Res.shopCart),
      ),
    );
  }
}
