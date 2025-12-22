part of 'profile_widgets_imports.dart';


class ProfileAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isShareHolder;
  final String email;
  final ProfileController controller;
  const ProfileAppBarWidget({super.key, required this.isShareHolder, required this.controller, required this.email});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isShareHolder == true,
        replacement: DefaultAppBar(
          title: tr('manageProfile'),
          onBack: () => controller.onPressBack(context, email),
        ),
        child: ShareHolderAppBarWidget(controller: controller,)
    );
  }

  @override
  Size get preferredSize =>  const Size.fromHeight(78);
}
