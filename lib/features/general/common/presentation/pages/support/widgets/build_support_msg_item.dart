part of 'support_w_imports.dart';

class BuildSupportMsgItem extends StatelessWidget {
  final SupportMsg model;

  const BuildSupportMsgItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: model.isSender ? 30 : 10,
        left: model.isSender ? 10 : 30,
        bottom: 19
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.isSender?"You" : "Admin",
            style: AppTextStyle.s18_w400(color: context.colors.black),
          ),
          Gaps.vGap10,
          Text(
            "10 feb 2025 - 11:43 PM",
            style: AppTextStyle.s12_w400(color: context.colors.textColor),
          ),
          Bubble(
            nip: model.isSender ? BubbleNip.leftTop : BubbleNip.rightTop,
            shadowColor: Colors.transparent,
            alignment: model.isSender
                ? AlignmentDirectional.centerStart
                : AlignmentDirectional.centerEnd,
            padding: const BubbleEdges.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            margin: const BubbleEdges.only(
              top: 10,
            ),
            color: model.isSender ? context.colors.primary : context.colors.gray4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
                  model.isSender ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                Visibility(
                  visible: model.msgType == "text",
                  replacement: InkWell(
                    onTap: () => AutoRouter.of(context).push(ImageZoomRoute(image: model.msg)),
                    child: CachedImage(
                      url: model.msg,
                      width: Dimens.dp150,
                      height: Dimens.dp150,
                      fit: BoxFit.fill,
                      imgMargin: Dimens.paddingVertical5PX,
                    ),
                  ),
                  child: Text(
                    model.msg,
                    style: AppTextStyle.s16_w400(color: context.colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
