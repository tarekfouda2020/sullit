part of 'login_widgets_imports.dart';

class BuildLoginSocialMedia extends StatelessWidget {
  final LoginController controller;

  const BuildLoginSocialMedia({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical20PX,
      child: Column(
        children: [
          Text(
            tr('or'),
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
          Gaps.vGap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Res.faceLogo, width: 48.r, height: 48.r),
              Gaps.hGap16,
              Container(
                  padding: Dimens.paddingAll13PX,
                  decoration: BoxDecoration(
                    color: context.colors.authField,
                    borderRadius: Dimens.borderRadius25PX,
                  ),
                  child: Image.asset(Res.google, width: 23.r, height: 23.r)),
            ],
          ),
        ],
      ),
    );
  }
}
