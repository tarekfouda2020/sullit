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
          padding: Dimens.paddingH16V40,
          child: Column(
            children: [
              // const BuildAuthAppBar(),
              BuildHeaderTitle(
                title: tr('forgetPassword'),
                subTitle: tr('recoverPassword'),
              ),
              const BuildForgetLogo(),
              BuildForgetForm(forgetPasswordController: forgetPasswordController),
              Gaps.vGap8,
              BuildForgetPasswordButton(
                  forgetPasswordController: forgetPasswordController),
              const BuildBackToLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
