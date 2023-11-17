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
              style: AppTextStyle.s16_w700(color: context.colors.blackOpacity)),
          InkWell(
            onTap: () =>
                AutoRouter.of(context).push(const ForgetPasswordRoute()),
            child: Text('  Restore',
                style: AppTextStyle.s16_w700(color: context.colors.primary)),
          ),
        ],
      ),
    );
  }
}
