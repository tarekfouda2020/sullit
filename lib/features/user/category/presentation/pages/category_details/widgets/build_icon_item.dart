part of 'category_details_widgets_imports.dart';

class BuildIconItem extends StatelessWidget {
  final String? icon;
  final IconData? iconData;
  final EdgeInsets? padding;
  final Function() onTap;
  final bool? checkValue;
  final bool? isFormCompare;
  final bool? changeBgColor;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final double? radius;
  final Color? inActiveColor;

  // final Color? containerColor;

  const BuildIconItem({
    super.key,
    this.icon,
    required this.onTap,
    this.padding,
    this.checkValue,
    // this.containerColor,
    this.isFormCompare,
    this.margin,
    this.iconData,
    this.width,
    this.height,
    this.radius,
    this.inActiveColor,
    this.changeBgColor = true,
  });

  @override
  Widget build(BuildContext context) {
    var iconColor = checkValue == true || isFormCompare == true
        ? context.colors.white
        : context.colors.textColor;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: margin ?? Dimens.paddingAll5PX,
        height: height ?? 25,
        width: width ?? 25,
        padding: padding,
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.gray3, width: .5),
          color: checkValue == true && changeBgColor!
              ? context.colors.primary
              : inActiveColor ?? context.colors.white,
          borderRadius: BorderRadius.circular(radius ?? Dimens.dp4),
        ),
        child: iconData != null
            ? Icon(
                iconData,
                color: iconColor,
                size: 16.sp,
              )
            : SvgPicture.asset(icon ?? ""),
      ),
    );
  }
}
