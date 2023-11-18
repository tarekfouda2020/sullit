part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH50V10,
      child: Row(
        children: [
          Text(tr('forgetPassword'),
              style: AppTextStyle.s14_w400(color: context.colors.textColor)),
          Gaps.hGap4,
          InkWell(
            onTap: () =>
                AutoRouter.of(context).push(const ForgetPasswordRoute()),
            child: Text(
              tr("restore"),
              style: AppTextStyle.s14_w400(color: context.colors.primary)
                  .copyWith(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
