part of 'profile_widgets_imports.dart';

class ManageProfileBottomNavWidget extends StatelessWidget {
  final ProfileController controller;

  const ManageProfileBottomNavWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var isShareHolder = context.read<UserCubit>().state.model?.isShareHolder;
    return KeyboardVisibilityBuilder(builder: (context, keyboardOpen) {
      return Visibility(
        visible: !keyboardOpen,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // if(isShareHolder == true)
            // Padding(
            //   padding: const EdgeInsetsDirectional.only(end: 10),
            //   child: ChangePasswordWidget(controller: controller),
            // ),
            LogoutButtonWidget(controller: controller),
            Row(
              children: [
                if (isShareHolder == true)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: BuildProfileButton(
                        controller: controller,
                        margin: EdgeInsets.zero,
                      ),
                    ),
                  ),
                Expanded(
                    child: BuildDeleteAccountButton(controller: controller)),
              ],
            ),
            Gaps.vGap10
          ],
        ),
      );
    });
  }
}
