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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Gaps.line(context.colors.blackOpacity, 20)),
              Gaps.hGap10,
              Text(
                tr('orLoginWith'),
                style: AppTextStyle.s16_w400(color: context.colors.black),
              ),
              Gaps.hGap10,
              Expanded(child: Gaps.line(context.colors.blackOpacity, 20)),
            ],
          ),
          Gaps.vGap20,
          SvgPicture.asset(
            Res.facebook,
            width: 50,
            height: 50,
          ),
        ],
      ),
    );
  }
}
