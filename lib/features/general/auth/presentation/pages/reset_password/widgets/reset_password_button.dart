part of 'reset_password_widgets_imports.dart';

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordController controller;

  const ResetPasswordButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title:  tr('setPassword'),
      onTap: () =>controller.resetPassword(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: controller.btnKey,
      margin: Dimens.paddingVertical30PX,
      height: 40.h,
    );
  }
}
