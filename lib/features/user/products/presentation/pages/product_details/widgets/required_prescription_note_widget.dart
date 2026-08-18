part of 'product_details_widgets_imports.dart';

class RequiredPrescriptionNoteWidget extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final double size;
  final BorderRadiusGeometry? radius;
  const RequiredPrescriptionNoteWidget({super.key,  this.padding, this.style, this.size = 17, this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
          color: context.colors.lightPink2,
          borderRadius:radius ?? Dimens.borderRadius10PX),
      child: Row(
        spacing: 8,
        children: [
          SvgPicture.asset(
            Res.warningIcon,
            width: size ,
            height:size,
          ),
          Text(
            "Required Prescription ",
            style: style ?? AppTextStyle.s14_w400(color: context.colors.primary),
          )
        ],
      ),
    );
  }
}
