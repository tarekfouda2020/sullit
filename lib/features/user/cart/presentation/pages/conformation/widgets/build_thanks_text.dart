part of 'conformation_w_imports.dart';
class BuildThanksText extends StatelessWidget {
  const BuildThanksText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(
          tr('thanksForYourOrder'),
          style: const AppTextStyle.s16_w500(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
