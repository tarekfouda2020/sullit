part of 'category_details_widgets_imports.dart';

class BuildIconItem extends StatelessWidget {
  final String? icon;
  final IconData? iconData;
  final EdgeInsets? padding;
  final Function() onTap;
  final bool? checkValue;
  final bool? isFormCompare;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final Color? containerColor;

  const BuildIconItem({
    super.key,
    this.icon,
    required this.onTap,
    this.padding,
    this.checkValue,
    this.containerColor,
    this.isFormCompare,
    this.margin,
    this.iconData,
    this.width,
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
        height: 25,
        width: width??25,
        padding: padding,
        decoration: BoxDecoration(
          color: context.colors.bgIcon,
          borderRadius: BorderRadius.circular(Dimens.dp4),
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
