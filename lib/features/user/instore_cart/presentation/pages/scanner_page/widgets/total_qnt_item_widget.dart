part of 'imports.dart';

class TotalQntItemWidget extends StatelessWidget {
  final Widget child;

  const TotalQntItemWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "No. of items :",
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
        child
      ],
    );
  }
}
