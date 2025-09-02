part of 'profile_widgets_imports.dart';

class BuildProfileButton extends StatelessWidget {
  final ProfileController controller;

  const BuildProfileButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr('save'),
      height: 35.h,
      margin:  Dimens.marginTop31,
      onTap: () => controller.setEditProfile(context),
    );
  }
}
