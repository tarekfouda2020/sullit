part of'build_register_widgets_imports.dart';
class BuildRegisterButton extends StatelessWidget {
  final RegisterController controller;
  const BuildRegisterButton({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingButton(
        title: tr('register'),
        onTap: () => controller.setUserRegister(context),
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
        margin: Dimens.paddingH50V10,
        height: 40.h,
        width: 200,
        borderRadius: 40,
      ),
    );
  }
}
