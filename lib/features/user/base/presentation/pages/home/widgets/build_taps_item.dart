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
        Gaps.vGap3,
        SizedBox(
          height: 34,
          width: 34,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (isActive) SvgPicture.asset(Res.bgTabs, height: 34, width: 34),
              SvgPicture.asset(
                controller.tabs[index],
                color: isActive ? context.colors.primary : context.colors.gray,
                height: 20,
                width: 20,
              ),
            ],
          ),
        ),
        Gaps.vGap3,
        Text(
          controller.tabsText(context)[index],
          style: AppTextStyle.s12_w500(
            color: isActive ? context.colors.primary : context.colors.black,
          ),
        )
      ],
    );
  }
}
