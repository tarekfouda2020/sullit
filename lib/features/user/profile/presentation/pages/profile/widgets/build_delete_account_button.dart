part of 'profile_widgets_imports.dart';

class BuildDeleteAccountButton extends StatelessWidget {
  final ProfileController controller;

  const BuildDeleteAccountButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("deleteAccount"),
      height: 35.h,
     color: context.colors.white,
      textColor: context.colors.primary,
      borderColor: context.colors.primary,
      onTap: () => controller.showDeleteAccountDialog(context),
    );
  }
}
