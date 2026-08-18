part of 'forget_password_widgets_imports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordController forgetPasswordController;

  const BuildForgetPasswordButton(
      {Key? key, required this.forgetPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("send"),
      onTap: () => forgetPasswordController.forgetPassword(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      //btnKey: forgetPasswordController.btnKey,
      margin: EdgeInsets.zero,
      height: 40.h,
      borderRadius: Dimens.borderRadius25PX,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }
}
