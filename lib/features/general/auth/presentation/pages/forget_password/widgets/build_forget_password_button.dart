part of 'forget_password_widgets_imports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordController forgetPasswordController;

  const BuildForgetPasswordButton(
      {Key? key, required this.forgetPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'Send',
      onTap: () =>forgetPasswordController.forgetPassword(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      //btnKey: forgetPasswordController.btnKey,
      margin: Dimens.paddingVertical10PX,
      width: 200,
      height: 40.h,
      borderRadius: Dimens.borderRadius25PX,
    );
  }
}
