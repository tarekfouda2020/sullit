part of 'profile_widgets_imports.dart';

class BuildProfileButton extends StatelessWidget {
  final ProfileController controller;
  final EdgeInsets? margin;
  const BuildProfileButton({Key? key, required this.controller, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr('save'),
      height: 35.h,
      fontSize: 15,
      margin: margin ?? Dimens.marginTop31,
      onTap: () => controller.setEditProfile(context),
    );
  }
}
