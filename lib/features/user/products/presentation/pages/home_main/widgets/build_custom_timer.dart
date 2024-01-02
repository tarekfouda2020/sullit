part of 'home_main_widgets_imports.dart';

class BuildCustomTimer extends StatelessWidget {
  final String time;
  final String text;

  const BuildCustomTimer({
    super.key,
    required this.time,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          alignment: Alignment.center,
          height: 22,
          width: 28,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text(
            time,
            style: AppTextStyle.s10_w500(color: context.colors.black),
          ),
        ),
        Gaps.vGap3,
        Text(
          text,
          style: AppTextStyle.s5_w600(color: context.colors.white),
        )
      ],
    );
  }
}
