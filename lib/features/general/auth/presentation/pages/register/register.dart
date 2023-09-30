part of 'register_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late RegisterController controller ;

  @override
  void initState() {
    controller = RegisterController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildAuthAppBar(),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: ListView(
          padding: Dimens.paddingHorizontal15PX,
          children: [
            const BuildHeaderLogo(),
            BuildHeaderTitle(title: tr('createAccount')),
            Gaps.vGap15,
            BuildRegisterFormFields(registerController: controller),
            Gaps.vGap10,
            BuildTermsAndConditions(registerController: controller),
            BuildRegisterButton(controller: controller),
            // BuildSellerButton(registerController: controller),
            const BuildRegisterSocial(),
            const BuildHaveAccount(),
          ],
        ),
      ),
    );
  }
}
