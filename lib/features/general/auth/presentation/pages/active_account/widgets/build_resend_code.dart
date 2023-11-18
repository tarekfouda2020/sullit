part of 'active_account_widgets_imports.dart';

class BuildResendCode extends StatelessWidget {
  const BuildResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Resend code in 00.40',
      style: AppTextStyle.s14_w400(color: context.colors.textColor),
    );
  }
}
