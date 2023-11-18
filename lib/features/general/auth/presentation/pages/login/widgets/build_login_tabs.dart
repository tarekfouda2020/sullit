part of 'login_widgets_imports.dart';

class BuildLoginTabs extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function() onTap;

  const BuildLoginTabs({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 10),
        decoration: BoxDecoration(
            color: selected ? context.colors.white : context.colors.authField,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: context.colors.authField,
                  spreadRadius: 1,
                  blurRadius: 15)
            ]),
        child: Text(
          text,
          style: AppTextStyle.s14_w500(
              color:
                  selected ? context.colors.black : context.colors.textColor),
        ),
      ),
    );
  }
}
