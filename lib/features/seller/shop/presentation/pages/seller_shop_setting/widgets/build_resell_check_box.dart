part of 'seller_shop_setting_widgets_imports.dart';

class BuildResellCheckBox extends StatelessWidget {
  final bool value;
  final String title;

  const BuildResellCheckBox(
      {Key? key, required this.value, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            checkColor: context.colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            activeColor: context.colors.darkPurple,
            value: value,
            onChanged: (value) {}),
        Text(
          title,
          style: AppTextStyle.s14_w400(color: context.colors.black),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
