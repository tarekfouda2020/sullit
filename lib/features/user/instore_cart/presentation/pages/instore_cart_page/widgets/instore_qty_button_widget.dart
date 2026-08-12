part of '../instore_cart_page_imports.dart';

class InstoreQtyButtonWidget extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;

  const InstoreQtyButtonWidget({
    super.key,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: onTap,
      duration: const Duration(milliseconds: 200),
      child: Container(
        width: 29,
        height: 29,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: context.colors.offWhite,
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ],
          color: context.colors.primary,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: context.colors.white,
          size: 17,
        ),
      ),
    );
  }
}
