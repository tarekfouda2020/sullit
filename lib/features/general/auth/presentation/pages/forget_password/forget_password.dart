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
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: const DefaultAppBar(title: "",bgColor: Colors.transparent,),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
          child: Column(
            children: [
              // const BuildAuthAppBar(),
              const BuildForgetLogo(),
              BuildHeaderTitle(
                title: tr('forgetPassword'),
                subTitle: tr('recoverPassword'),
              ),
              Gaps.vGap20,
              BuildForgetForm(forgetPasswordController: forgetPasswordController),
              Gaps.vGap8,
              BuildForgetPasswordButton(
                  forgetPasswordController: forgetPasswordController
              ),
              const BuildBackToLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
