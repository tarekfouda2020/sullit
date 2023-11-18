part of 'login_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: loginController.onBackPressed,
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: ListView(
            padding: Dimens.paddingHorizontal20PX,
            children: [
              const BuildHeaderLogo(),
              BuildHeaderTitle(title: tr('login')),
              Gaps.vGap15,
              BuildLoginForm(controller: loginController),
              BuildLoginButton(controller: loginController),
              BuildLoginSocialMedia(controller: loginController),
              const BuildForgetPasswordView(),
            ],
          ),
        ),
      ),
    );
  }
}
