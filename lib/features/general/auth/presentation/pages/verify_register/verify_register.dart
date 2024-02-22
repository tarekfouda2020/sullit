part of 'verify_register_imports.dart';

class VerifyRegister extends StatefulWidget {
  final String email;

  const VerifyRegister({super.key, required this.email});

  @override
  _VerifyRegisterState createState() => _VerifyRegisterState();
}

class _VerifyRegisterState extends State<VerifyRegister> {
  late VerifyRegisterController controller;

  @override
  void initState() {
    controller = VerifyRegisterController(widget.email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => controller.onBackPressed(context),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SingleChildScrollView(
          padding: Dimens.paddingH20V10,
          child: Column(
            children: [
              BuildAuthAppBar(
                onBack: () => controller.onBackPressed(context),
              ),
              const BuildHeaderLogo(),
              BuildHeaderTitle(
                title: tr('verifyYourEmailAddress'),
                subTitle: tr('verifyRegister'),
              ),
              DefaultButton(
                title: tr('requestAnotherLink'),
                onTap: () => controller.resendCode(),
                height: 40.h,
                width: 200,
                borderRadius: BorderRadius.circular(24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
