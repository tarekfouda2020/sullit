part of 'home_main_widgets_imports.dart';

class BuildCustomTimer extends StatelessWidget {
  final String firstTimeNumber;
  final String secondTimeNumber;
  final String? threeTimeNumber;
  final String text;

  const BuildCustomTimer({
    super.key,
    required this.text,
    required this.firstTimeNumber,
    this.threeTimeNumber,
    required this.secondTimeNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            _buildContainer(context, firstTimeNumber),
            _buildContainer(context, secondTimeNumber),
            if (threeTimeNumber != "0" &&
                threeTimeNumber != "" &&
                threeTimeNumber != "null" &&
                threeTimeNumber != null)
              _buildContainer(context, threeTimeNumber!),
          ],
        ),
        Gaps.vGap3,
        Text(
          text,
          style: AppTextStyle.s10_w400(color: context.colors.gold),
        )
      ],
    );
  }

  Container _buildContainer(BuildContext context, String time) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.symmetric(horizontal: 6.5),
      alignment: Alignment.center,
      height: 26.5,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        time,
        style: AppTextStyle.s12_w700(color: context.colors.black),
      ),
    );
  }
}
