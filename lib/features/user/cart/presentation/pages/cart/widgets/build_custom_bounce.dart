part of 'cart_widgets_imports.dart';

class BuildCustomBounce extends StatelessWidget {
  final Function() onTap;
  final IconData iconData;
  final bool deleteIcon;
  final EdgeInsetsGeometry? margin;

  const BuildCustomBounce(
      {super.key,
      required this.onTap,
      required this.iconData,
       this.margin,
      this.deleteIcon = false});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: onTap,
      duration: const Duration(milliseconds: 200),
      child: Container(
        margin: margin ?? const EdgeInsets.symmetric(horizontal: Dimens.dp10),
        padding: const EdgeInsets.all(Dimens.dp8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: context.colors.offWhite,
                blurRadius: 1,
                spreadRadius: 1)
          ],
          color: context.colors.primary ,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color:  context.colors.white,
          size: 17,
        ),
      ),
    );
  }
}
