part of 'imports.dart';

class TotalQntItemWidget extends StatelessWidget {
  final Widget child;
  final String text;

  const TotalQntItemWidget({
    super.key,
    required this.child,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
        child
      ],
    );
  }
}
