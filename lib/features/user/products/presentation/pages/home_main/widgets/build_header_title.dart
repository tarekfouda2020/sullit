part of 'home_main_widgets_imports.dart';

class BuildHeaderTitle extends StatelessWidget {
  final String title;
  final String? btnText;
  final Function() onTap;

  const BuildHeaderTitle(
      {Key? key, required this.title, this.btnText, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: AppTextStyle.s16_w600(
              color: context.colors.black,
            ).copyWith(height: 0),
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            btnText ?? tr("seeAll"),
            style: AppTextStyle.s12_w400(
              color: context.colors.primary,
            ),
          ),
        )
      ],
    );
  }
}
