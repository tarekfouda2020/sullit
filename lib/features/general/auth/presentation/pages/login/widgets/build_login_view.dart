part of'login_widgets_imports.dart';

class BuildLoginView extends StatelessWidget {
  final LoginController controller;
  const BuildLoginView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildLoginForm(controller: controller),
        BuildLoginButton(controller: controller),
        BuildLoginSocialMedia(controller: controller),
        const BuildForgetPasswordView(),
      ],
    );
  }
}
