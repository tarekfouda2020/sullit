part of 'reset_password_imports.dart';

class ResetPassword extends StatefulWidget {
  final String email;
  final String code;

  const ResetPassword({
    super.key,
    required this.email,
    required this.code,
  });

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late ResetPasswordController controller;

  @override
  void initState() {
    controller = ResetPasswordController(widget.email);
    controller.code.text = widget.code;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: ListView(
          padding: Dimens.paddingH24V40,
          children: [
            const BuildAuthAppBar(),
            BuildHeaderTitle(
              title: tr('forgetPassword'),
              subTitle: tr("enterNewPassword"),
            ),
            ResetPasswordForm(controller: controller),
            Gaps.vGap32,
            ResetPasswordButton(controller: controller),
          ],
        ),
      ),
    );
  }
}
