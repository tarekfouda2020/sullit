part of 'profile_widgets_imports.dart';

class BuildProfileButton extends StatelessWidget {
  final ProfileController controller;

  const BuildProfileButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "Confirm",
      height: 35.h,
      borderRadius: Dimens.borderRadius10PX,
      margin: Dimens.paddingAll20PX,
      onTap: () => controller.setEditProfile(context),
    );
  }
}
