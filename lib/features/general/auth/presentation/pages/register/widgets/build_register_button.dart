part of'build_register_widgets_imports.dart';
class BuildRegisterButton extends StatelessWidget {
  final RegisterController controller;
  const BuildRegisterButton({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr('register'),
      onTap: () => controller.setUserRegister(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      margin:Dimens.paddingVertical20PX,
      fontSize: 10,
      height: 40.h,
      width: 200,
    );
  }
}
