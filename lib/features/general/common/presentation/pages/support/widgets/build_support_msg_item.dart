part of 'support_w_imports.dart';

class BuildSupportMsgItem extends StatelessWidget {
  final SupportMsg model;

  const BuildSupportMsgItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Bubble(
      nip: model.isSender ? BubbleNip.rightTop : BubbleNip.leftTop,
      shadowColor: context.colors.offWhite,
      alignment: model.isSender
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      padding: const BubbleEdges.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      margin: BubbleEdges.only(
        top: 10,
        right: model.isSender ? 10 : 30,
        left: model.isSender ? 30 : 10,
      ),
      color: model.isSender ? context.colors.white : context.colors.offWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
            model.isSender ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(
            model.createdAt,
            style: AppTextStyle.s11_w400(color: context.colors.blackOpacity),
          ),
          Visibility(
            visible: model.msgType == "text",
            replacement: InkWell(
              onTap: () =>
                  AutoRouter.of(context).push(ImageZoomRoute(image: model.msg)),
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
              style: AppTextStyle.s16_w400(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
