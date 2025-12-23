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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BuildProfileButton(
                controller: controller,
                margin: const EdgeInsets.only(top: 5),
              ),
            ),
            Row(
              children: [
                if (isShareHolder == true)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: LogoutButtonWidget(controller: controller,
                          margin: EdgeInsets.zero
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
