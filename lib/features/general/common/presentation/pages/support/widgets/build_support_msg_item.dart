part of 'support_w_imports.dart';

class BuildSupportMsgItem extends StatelessWidget {
  final SupportMsg model;

  const BuildSupportMsgItem({super.key, required this.model});

  bool _isRTL(BuildContext context) {
    final locale = context.read<DeviceCubit>().state.model.locale;
    return locale.languageCode == LangCodeHelper.langAR;
  }

  // Helper function to get appropriate padding based on language direction
  EdgeInsets _getMessagePadding(BuildContext context) {
    final isRTL = _isRTL(context);
    
    if (model.isSender) {
      // Sender message
      if (isRTL) {
        // Arabic: sender messages on the right
        return const EdgeInsets.only(
          left: 120,
          right: 10,
          bottom: 19,
        );
      } else {
        // English/Bengali: sender messages on the left
        return const EdgeInsets.only(
          right: 120,
          left: 10,
          bottom: 19,
        );
      }
    } else {
      // Admin message
      if (isRTL) {
        // Arabic: admin messages on the left
        return const EdgeInsets.only(
          right: 120,
          left: 10,
          bottom: 19,
        );
      } else {
        // English/Bengali: admin messages on the right
        return const EdgeInsets.only(
          left: 120,
          right: 10,
          bottom: 19,
        );
      }
    }
  }

  // Helper function to get appropriate alignment based on language direction
  AlignmentDirectional _getMessageAlignment(BuildContext context) {
    final isRTL = _isRTL(context);
    
    if (model.isSender) {
      // Sender message
      if (isRTL) {
        // Arabic: sender messages align to start (right)
        return AlignmentDirectional.centerStart;
      } else {
        // English/Bengali: sender messages align to start (left)
        return AlignmentDirectional.centerStart;
      }
    } else {
      // Admin message
      if (isRTL) {
        // Arabic: admin messages align to end (left)
        return AlignmentDirectional.centerEnd;
      } else {
        // English/Bengali: admin messages align to end (right)
        return AlignmentDirectional.centerEnd;
      }
    }
  }

  // Helper function to get appropriate cross alignment based on language direction
  CrossAxisAlignment _getCrossAxisAlignment(BuildContext context) {
    final isRTL = _isRTL(context);
    
    if (model.isSender) {
      // Sender message
      if (isRTL) {
        // Arabic: sender messages align content to start (right)
        return CrossAxisAlignment.start;
      } else {
        // English/Bengali: sender messages align content to start (left)
        return CrossAxisAlignment.start;
      }
    } else {
      // Admin message
      if (isRTL) {
        // Arabic: admin messages align content to end (left)
        return CrossAxisAlignment.end;
      } else {
        // English/Bengali: admin messages align content to end (right)
        return CrossAxisAlignment.end;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _getMessagePadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.isSender ? tr("you") : tr("admin"),
            style: AppTextStyle.s18_w400(color: context.colors.black),
          ),
          Gaps.vGap10,
          Text(
            DateTimeHelper.getDate(model.createdAt,formatType: "d MMM yyyy - hh:mm a"),
            style: AppTextStyle.s12_w400(color: context.colors.textColor),
          ),
          Container(
            alignment: _getMessageAlignment(context),
            margin: const EdgeInsets.only(top: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: model.isSender ? context.colors.primary : context.colors.gray4,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: model.isSender
                      ? const Radius.circular(0)  // Small radius for sender's bottom-left
                      : const Radius.circular(20),
                  topEnd: model.isSender
                      ? const Radius.circular(20)
                      : const Radius.circular(0),
                  bottomStart:  const Radius.circular(20),
                  bottomEnd:  const Radius.circular(20), // Small radius for receiver's bottom-right
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
                crossAxisAlignment: _getCrossAxisAlignment(context),
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
