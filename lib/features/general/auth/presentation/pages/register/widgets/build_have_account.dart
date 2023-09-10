part of 'build_register_widgets_imports.dart';

class BuildHaveAccount extends StatelessWidget {
  const BuildHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Already have an account ? ",
          style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
        ),
        InkWell(
          onTap: () => AutoRouter.of(context).push(const LoginRoute()),
          child: Text(
            "Log In",
            style: AppTextStyle.s16_w500(color: context.colors.primary),
          ),
        ),
        Gaps.vGap32,
      ],
    );
  }
}
