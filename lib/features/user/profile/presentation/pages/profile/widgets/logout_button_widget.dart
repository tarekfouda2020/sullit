part of 'profile_widgets_imports.dart';


class LogoutButtonWidget extends StatelessWidget {
  final ProfileController controller;
  const LogoutButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("logout"),
      height: 35.h,
      color: context.colors.primary,
      textColor: context.colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      onTap: () => controller.logOut(context),
    );
  }
}
