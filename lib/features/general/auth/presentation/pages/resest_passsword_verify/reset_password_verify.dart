part of 'reset_password_verify_imports.dart';

class ResetPasswordVerify extends StatefulWidget {
  final String email;
  const ResetPasswordVerify({super.key, required this.email});

  @override
  State<ResetPasswordVerify> createState() => _ResetPasswordVerifyState();
}

class _ResetPasswordVerifyState extends State<ResetPasswordVerify> {
  late final RestPasswordVerifyController controller;

  @override
  void initState() {
    super.initState();
    controller = RestPasswordVerifyController(widget.email);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: const DefaultAppBar(
          title: "",
          bgColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          padding: Dimens.paddingHorizontal20PX,
          child: Column(
            children: [
              BuildHeaderTitle(
                title: tr('forgetPassword'),
                subTitle: tr('recoverPasswordCode'),
              ),
              const BuildForgetLogo(),
              PasswordVerifyForm(controller: controller),
              Gaps.vGap32,
              DefaultButton(
                title: tr('verify'),
                onTap: () => controller.onPressConfirm(context),
                color: context.colors.primary,
                textColor: context.colors.white,
                borderRadius: Dimens.borderRadius25PX,
              ),
              Gaps.vGap32,
            ],
          ),
        ),
      ),
    );
  }
}
