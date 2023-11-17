part of 'login_widgets_imports.dart';

class BuildDoNotHaveAccount extends StatelessWidget {
  const BuildDoNotHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical20PX,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${tr('dontHaveAccount')} ",
                style:
                    AppTextStyle.s16_w400(color: context.colors.blackOpacity),
              ),
              InkWell(
                onTap: () => AutoRouter.of(context).push(const RegisterRoute()),
                child: Text(
                  tr('registerNow'),
                  style: AppTextStyle.s16_w700(color: context.colors.primary),
                ),
              ),
            ],
          ),
          //Gaps.vGap10,
          // GestureDetector(
          //   onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
          //   child: Text(
          //     tr('skip'),
          //     style:
          //         AppTextStyle.s16_w500(color: context.colors.primary).copyWith(
          //       decoration: TextDecoration.underline,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
