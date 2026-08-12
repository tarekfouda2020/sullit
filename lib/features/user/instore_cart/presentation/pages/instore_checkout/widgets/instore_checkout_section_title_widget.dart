part of '../instore_checkout_imports.dart';

class InstoreCheckoutSectionTitleWidget extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;

  const InstoreCheckoutSectionTitleWidget({
    super.key,
    required this.title,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        title,
        style: AppTextStyle.s16_w700(color: context.colors.black),
      ),
    );
  }
}
