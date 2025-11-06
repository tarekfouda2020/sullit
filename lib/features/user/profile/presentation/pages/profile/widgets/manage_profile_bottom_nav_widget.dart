part of 'profile_widgets_imports.dart';


class ManageProfileBottomNavWidget extends StatelessWidget {
  final ProfileController controller;
  const ManageProfileBottomNavWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context,keyboardOpen) {
        return Visibility(
          visible: !keyboardOpen,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LogoutButtonWidget(controller: controller),
              BuildDeleteAccountButton(controller: controller),
              Gaps.vGap20
            ],
          ),
        );
      }
    );
  }
}
