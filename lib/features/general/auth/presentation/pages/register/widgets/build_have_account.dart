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
          tr('alreadyHaveAccount'),
          style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
        ),
        InkWell(
          onTap: () => AutoRouter.of(context).pop(),
          child: Text(
            tr('login'),
            style: AppTextStyle.s16_w700(color: context.colors.primary),
          ),
        ),
        Gaps.vGap32,
      ],
    );
  }
}
