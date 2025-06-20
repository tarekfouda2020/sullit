part of 'forget_password_widgets_imports.dart';

class BuildBackToLogin extends StatelessWidget {
  const BuildBackToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: Dimens.paddingVertical36PX,
          child: InkWell(
            onTap: () => AutoRouter.of(context).pop(),
            child: Text(
              tr("backLogin"),
              style: AppTextStyle.s16_w700(color: context.colors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
