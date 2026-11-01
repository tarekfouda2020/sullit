part of 'widgets_imports.dart';

class AiChatBubbleWidget extends StatelessWidget {
  final AiChatMessage message;
  final AiChatController controller;
  final bool writeOut;

  const AiChatBubbleWidget({
    super.key,
    required this.message,
    required this.controller,
    this.writeOut = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          mine ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.86,
        ),
        child: Column(
          crossAxisAlignment:
              mine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp12,
                vertical: Dimens.dp10,
              ),
              decoration: BoxDecoration(
                color: mine ? context.colors.primary : context.colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: const Radius.circular(Dimens.dp16),
                  topEnd: const Radius.circular(Dimens.dp16),
                  bottomStart: Radius.circular(mine ? Dimens.dp16 : Dimens.dp4),
                  bottomEnd: Radius.circular(mine ? Dimens.dp4 : Dimens.dp16),
                ),
                border: mine
                    ? null
                    : Border.all(color: context.colors.borderColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  writeOut
                      ? AiChatTypewriterTextWidget(
                          text: message.text,
                          scroll: controller.scroll,
                          selectionColor: context.colors.lightPink,
                          style: AppTextStyle.s13_w400(
                            color: context.colors.blackTextColor,
                          ).copyWith(height: 1.3),
                        )
                      : SelectableText(
                          message.text,
                          selectionColor: mine
                              ? context.colors.gray8
                              : context.colors.lightPink,
                          style: AppTextStyle.s14_w400(
                            color: mine
                                ? context.colors.white
                                : context.colors.blackTextColor,
                          ).copyWith(height: 1.4),
                        ),
                ],
              ),
            ),
            // if (message.hasCard) ...[
            //   Gaps.vGap8,
            //   AiChatCardsWidget(message: message, controller: controller),
            // ],
          ],
        ),
      ),
    );
  }


  bool get mine => message.isUser;

}
