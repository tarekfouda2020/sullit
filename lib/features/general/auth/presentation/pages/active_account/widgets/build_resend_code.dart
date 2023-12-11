part of 'active_account_widgets_imports.dart';

class BuildResendCode extends StatelessWidget {
final ActiveAccountController controller;

  const BuildResendCode({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Resend code in 00.40',
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),

      ],
    );
  }
}
