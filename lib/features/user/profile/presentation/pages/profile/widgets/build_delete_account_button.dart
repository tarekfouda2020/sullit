part of 'profile_widgets_imports.dart';

class BuildDeleteAccountButton extends StatelessWidget {
  final ProfileController controller;

  const BuildDeleteAccountButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("deleteAccount"),
      height: 35.h,
      borderRadius: Dimens.borderRadius10PX,
      margin: Dimens.paddingAll20PX,
      onTap: () => controller.showDeleteAccountDialog(context),
    );
  }
}
