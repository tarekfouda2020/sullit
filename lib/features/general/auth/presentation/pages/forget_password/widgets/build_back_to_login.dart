part of 'forget_password_widgets_imports.dart';

class BuildBackToLogin extends StatelessWidget {
  const BuildBackToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: Dimens.paddingVertical40PX,
          child: InkWell(
            onTap: () => AutoRouter.of(context).pop(),
            child: Text(
              'Back To Login',
              style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
            ),
          ),
        ),
      ],
    );
  }
}
