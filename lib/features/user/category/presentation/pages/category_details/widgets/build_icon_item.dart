part of 'category_details_widgets_imports.dart';

class BuildIconItem extends StatelessWidget {
  final IconData iconData;
  final EdgeInsets? padding;
  final Function() onTap;
  final bool? checkValue;
  final bool? isFormCompare ;
  final Color? containerColor;

  const BuildIconItem(
      {super.key,
      required this.iconData,
      required this.onTap,
      this.padding,
      this.checkValue,
      this.containerColor, this.isFormCompare});

  @override
  Widget build(BuildContext context) {
    var iconColor = checkValue == true || isFormCompare == true
        ? context.colors.white
        : context.colors.blackOpacity;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? Dimens.paddingAll3PX,
        margin: Dimens.paddingAll5PX,
        decoration: BoxDecoration(
          color: containerColor ?? context.colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.colors.gray.withOpacity(.5),
              blurRadius: .5,
              spreadRadius: .5,
            )
          ],
        ),
        child: Icon(
          iconData,
          color: iconColor,
          size: 16.sp,
        ),
      ),
    );
  }
}
