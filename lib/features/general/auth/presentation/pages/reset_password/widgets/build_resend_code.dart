part of 'reset_password_widgets_imports.dart';

class BuildResendCode extends StatelessWidget {
  final ResetPasswordController controller;

  const BuildResendCode({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tr('didntReceiveCode'),
          style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
        ),
        InkWell(
          onTap: () => controller.resendCode(),
          child: Text(
            tr('resendCode'),
            style:
                AppTextStyle.s16_w400(color: context.colors.primary).copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
