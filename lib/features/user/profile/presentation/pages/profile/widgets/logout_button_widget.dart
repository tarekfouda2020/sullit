part of 'profile_widgets_imports.dart';

class LogoutButtonWidget extends StatelessWidget {
  final ProfileController controller;
  final EdgeInsets? margin;
  const LogoutButtonWidget({super.key, required this.controller, this.margin});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("logout"),
      height: 35.h,
      color: context.colors.primary,
      fontSize: 15,
      textColor: context.colors.white,
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 10),
      onTap: () => controller.logOut(context),
    );
  }
}
