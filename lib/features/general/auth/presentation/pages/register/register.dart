part of 'register_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late RegisterController controller;

  @override
  void initState() {
    controller = RegisterController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildRegisterFormFields(registerController: controller),
        Gaps.vGap10,
        BuildRegisterButton(controller: controller),
      ],
    );
  }
}
