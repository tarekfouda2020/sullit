part of 'profile_widgets_imports.dart';

class BuildProfileButton extends StatelessWidget {
  final ProfileController controller;

  const BuildProfileButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr('confirm'),
      height: 35.h,
      borderRadius: Dimens.borderRadius10PX,
      margin: const EdgeInsets.only(left: 22,right: 22,top: 10),
      onTap: () => controller.setEditProfile(context),
    );
  }
}
