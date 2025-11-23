part of 'profile_widgets_imports.dart';

class ChangePasswordWidget extends StatelessWidget {
  final ProfileController controller;
  const ChangePasswordWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.routeToChangePassword(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                tr("changePassword"),
              style: AppTextStyle.s16_w700(color: context.colors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
