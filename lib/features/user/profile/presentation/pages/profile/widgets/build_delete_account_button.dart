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
      fontSize: 15,
      textColor: context.colors.primary,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      borderColor: context.colors.primary,
      onTap: () => controller.showDeleteAccountDialog(context),
    );
  }
}
