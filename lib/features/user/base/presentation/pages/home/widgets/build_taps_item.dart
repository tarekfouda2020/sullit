part of 'home_widgets_imports.dart';

class BuildTabItem extends StatelessWidget {
  final HomeController controller;
  final int index;
  final bool isActive;

  const BuildTabItem({
    Key? key,
    required this.controller,
    required this.index,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Gaps.vGap5,
        Container(
          width: 32, height: 32,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive
                  ?context.colors.lightPink
                  :Colors.transparent
          ),
          child: SvgPicture.asset(
            controller.tabs[index],
            colorFilter: ColorFilter.mode(
                isActive ? context.colors.primary : context.colors.gray,
                BlendMode.srcIn),
            // height: 20,
            // width: 20,
          ),
        ),
        Gaps.vGap5,
        Text(
          controller.tabsText(context)[index],
          style: AppTextStyle.s12_w700(
            color: isActive ? context.colors.primary : context.colors.black,
          ),
        )
      ],
    );
  }
}
