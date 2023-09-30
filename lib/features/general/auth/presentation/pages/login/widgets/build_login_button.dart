part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginController controller;

  const BuildLoginButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: tr('login'),
      onTap: () => controller.onSubmit(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: controller.btnKey,
      margin: Dimens.paddingVertical10PX,
      height: 40.h,
    );
  }
}
