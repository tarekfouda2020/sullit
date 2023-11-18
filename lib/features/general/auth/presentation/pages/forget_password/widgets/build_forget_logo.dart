part of'forget_password_widgets_imports.dart';

class BuildForgetLogo extends StatelessWidget {
  const BuildForgetLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 40),
      child: Image.asset(Res.forgetLogo,height: 118.72,width: 141.22,),
    );
  }
}
