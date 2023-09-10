part of 'forget_password_imports.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPasswordController forgetPasswordController =
      ForgetPasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildAuthAppBar(),
      body: ListView(
        padding: Dimens.paddingHorizontal15PX,
        children: [
          const BuildHeaderLogo(),
          const BuildHeaderTitle(
            title: "Forgot Password ?",
            subTitle: "Enter your email address to recover your password.",
          ),
          BuildForgetForm(forgetPasswordController: forgetPasswordController),
          BuildForgetPasswordButton(
              forgetPasswordController: forgetPasswordController),
        ],
      ),
    );
  }
}
