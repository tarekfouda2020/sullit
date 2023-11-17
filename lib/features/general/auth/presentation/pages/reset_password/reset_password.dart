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
      body: ListView(
        padding: Dimens.paddingH24V40,
        children: [
          const BuildAuthAppBar(),
           BuildHeaderTitle(
            title: tr('forgetPassword'),
            subTitle:
                "Enter the New password",
          ),
          ResetPasswordForm(controller: controller),
          ResetPasswordButton(controller: controller),
          BuildResendCode(controller: controller),
        ],
      ),
    );
  }
}
