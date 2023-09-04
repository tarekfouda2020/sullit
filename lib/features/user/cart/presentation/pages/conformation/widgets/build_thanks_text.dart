part of 'conformation_w_imports.dart';
class BuildThanksText extends StatelessWidget {
  const BuildThanksText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Thank You for Your Order!',
          style: AppTextStyle.s16_w500(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
