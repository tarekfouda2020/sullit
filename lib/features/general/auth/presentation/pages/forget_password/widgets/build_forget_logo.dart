part of 'forget_password_widgets_imports.dart';

class BuildForgetLogo extends StatelessWidget {
  const BuildForgetLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Image.asset(
        Res.forgetImage,
        height: 170.72,
        width: 171.22,
      ),
    );
  }
}
