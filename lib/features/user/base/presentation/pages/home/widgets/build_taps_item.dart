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
    bool? isShareHolder = context.read<UserCubit>().state.model?.isShareHolder;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: index!=2,
            replacement: Gaps.vGap(33),
            child: Container(
              width: 33, height: 33,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive
                      ?( isShareHolder == true && index == controller.tabs.length-1
                      ? const Color(0xffFFB743).withAlpha(90)
                      : context.colors.lightPink
                  )
                      :Colors.transparent
              ),
              child: SvgPicture.asset(
                controller.tabs[index],
                colorFilter: ColorFilter.mode(
                    isActive ?
                    ( isShareHolder == true && index == controller.tabs.length-1
                        ? const Color(0xffF19500)
                        :context.colors.primary )
                        : context.colors.black,
                    BlendMode.srcIn),
                // height: 20,
                // width: 20,
              ),
            ),
          ),
          Gaps.vGap5,
          Text(
            controller.tabsText(context)[index],
            style: AppTextStyle.s12_w700(
              color: textColor(context,isShareHolder ?? false),
            ),
          ),
        ],
      ),
    );
  }

  Color textColor(BuildContext context,bool isShareHolder){
    return isActive || index==2
        ? (
        isShareHolder && index == controller.tabs.length-1
            ? const Color(0xffF19500)
            :
        context.colors.primary
    )
        : context.colors.black;
  }
}
