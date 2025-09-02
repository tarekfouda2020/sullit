part of'build_register_widgets_imports.dart';
class BuildRegisterButton extends StatelessWidget {
  final RegisterController controller;
  const BuildRegisterButton({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: tr('register'),
      onTap: () => controller.setUserRegister(context),
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: controller.btnKey,
      margin: EdgeInsets.only(bottom: 20.r),
      height: 40.h,
      borderRadius: 40,
      fontSize:18 ,
      fontWeight: FontWeight.w700,
    );
  }
}
