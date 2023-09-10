part of 'reset_password_imports.dart';

class ResetPassword extends StatefulWidget {
  final String email;

  const ResetPassword({super.key, required this.email});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late ResetPasswordController controller;

  @override
  void initState() {
    controller = ResetPasswordController(widget.email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildAuthAppBar(),
      body: ListView(
        padding: Dimens.paddingHorizontal15PX,
        children: [
          const BuildHeaderLogo(),
          const BuildHeaderTitle(
            title: "Set new password",
            subTitle:
                "Enter your email address , new password and confirm password",
          ),
          ResetPasswordForm(controller: controller),
          ResetPasswordButton(controller: controller),
          BuildResendCode(controller: controller),
        ],
      ),
    );
  }
}
