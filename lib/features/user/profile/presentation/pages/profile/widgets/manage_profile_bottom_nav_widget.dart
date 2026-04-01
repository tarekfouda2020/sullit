part of 'profile_widgets_imports.dart';

class ManageProfileBottomNavWidget extends StatelessWidget {
  final ProfileController controller;

  const ManageProfileBottomNavWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, keyboardOpen) {
      return Visibility(
        visible: !keyboardOpen,
        child: CustomBottomSafeAreaWidget(
          iosPaddingBottom: 20,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!context.isShareHolder)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: LogoutButtonWidget(
                      controller: controller, margin: EdgeInsets.zero),
                ),
              if (context.isShareHolder)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: BuildProfileButton(
                      controller: controller, margin: EdgeInsets.zero),
                ),
              Row(
                children: [
                  if (context.isShareHolder)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 10),
                        child: LogoutButtonWidget(
                            controller: controller, margin: EdgeInsets.zero),
                      ),
                    ),
                  Expanded(
                      child: BuildDeleteAccountButton(controller: controller)),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
