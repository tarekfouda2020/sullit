part of 'reset_password_widgets_imports.dart';

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordController controller;

  const ResetPasswordButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr('verify'),
      onTap: () => controller.resetPassword(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      margin: Dimens.paddingH80V10,
      height: 40.h,
      borderRadius: Dimens.borderRadius25PX,
    );
  }
}
