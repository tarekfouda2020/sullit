part of 'login_widgets_imports.dart';

class BuildLoginTabs extends StatelessWidget {
  final String text;
  final bool selected;
  final double? width;
  final double? height;
  final void Function() onTap;

  const BuildLoginTabs({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
     this.width,
     this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 109,
        height: height ?? 34,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: selected ? context.colors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(40)
        ),
        child: Text(
          text,
          style: AppTextStyle.s14_w800(
              color:
                  selected ? context.colors.white : context.colors.textColor),
        ),
      ),
    );
  }
}
