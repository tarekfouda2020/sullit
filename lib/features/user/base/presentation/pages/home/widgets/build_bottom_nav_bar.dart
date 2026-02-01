part of 'home_widgets_imports.dart';

class BuildBottomNavBar extends StatelessWidget {
  final HomeController controller;

  const BuildBottomNavBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: controller.homeTabCubit,
      builder: (context, state) {
        return KeyboardVisibilityBuilder(
          builder: (ctx, isKeyboardVisible) {
          return Visibility(
            visible: !isKeyboardVisible,
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              clipBehavior: Clip.none,
              children: [
                AnimatedBottomNavigationBar.builder(
                  itemCount: controller.pages().length,
                  tabBuilder: (int index, bool isActive) {
                    return BuildTabItem(
                      controller: controller,
                      index: index,
                      isActive: isActive,
                    );
                  },
                  backgroundColor: Colors.white,
                  splashColor: context.colors.primary,
                  elevation: 0,
                  activeIndex: state.data,
                  shadow: BoxShadow(
                    color: Colors.black.withOpacity(.095),
                    blurRadius: 8,
                  ),
                  gapLocation: GapLocation.none,
                  splashSpeedInMilliseconds: 200,
                  gapWidth: 25,
                  notchMargin: 0,
                  notchSmoothness: NotchSmoothness.sharpEdge,
                  blurEffect: false,
                  leftCornerRadius: 18,
                  rightCornerRadius: 18,
                  height: Platform.isIOS ? 75 : 85,
                  onTap: (index) => controller.animateTabsPages(index, context),
                ),
                if (context.isShareHolder)
                  PositionedDirectional(
                      top: state.data == controller.tabs.length - 1 ? -13 : -8,
                      end: 28,
                      child: SvgPicture.asset(Res.crownIcon)),
              ],
            ),
          );
        },);
      },
    );
  }
}
