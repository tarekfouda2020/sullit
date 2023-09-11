part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingVertical15PX,
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(const ForgetPasswordRoute()),
        child: Text(
          "Forget password?",
          style: AppTextStyle.s16_w700(color: context.colors.black)
        ),
      ),
    );
  }
}
