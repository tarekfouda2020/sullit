part of 'support_w_imports.dart';

class BuildSupportMsgItem extends StatelessWidget {
  final SupportMsg model;

  const BuildSupportMsgItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: model.isSender ? 120 : 10,
        left: model.isSender ? 10 : 120,
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
          Container(
            alignment: model.isSender
                ? AlignmentDirectional.centerStart
                : AlignmentDirectional.centerEnd,
            margin: const EdgeInsets.only(top: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: model.isSender ? context.colors.primary : context.colors.gray4,
                borderRadius: BorderRadius.only(
                  topLeft: model.isSender
                      ? const Radius.circular(0)  // Small radius for sender's bottom-left
                      : const Radius.circular(20),
                  topRight: model.isSender
                      ? const Radius.circular(20)
                      : const Radius.circular(0),
                  bottomLeft:  const Radius.circular(20),
                  bottomRight:  const Radius.circular(20), // Small radius for receiver's bottom-right
                ),
                // Optional: Add subtle shadow for depth
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                model.isSender ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                children: [
                  Visibility(
                    visible: model.msgType == "text",
                    replacement: InkWell(
                      onTap: () => AutoRouter.of(context).push(ImageZoomRoute(image: model.msg)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CachedImage(
                          url: model.msg,
                          width: Dimens.dp150,
                          height: Dimens.dp150,
                          fit: BoxFit.cover, // Changed from fill to cover for better image display
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
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
            ),
          ),
        ],
      ),
    );
  }
}
