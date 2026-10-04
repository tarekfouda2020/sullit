part of 'widgets_imports.dart';

class AiChatBubbleWidget extends StatelessWidget {
  final AiChatMessage message;
  final AiChatController controller;

  const AiChatBubbleWidget({
    super.key,
    required this.message,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final mine = message.isUser;
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
                borderRadius: BorderRadius.circular(Dimens.dp16),
                border: mine
                    ? null
                    : Border.all(color: context.colors.borderColor),
              ),
              child: Text(
                message.text,
                style: AppTextStyle.s13_w400(
                  color: mine ? context.colors.white : context.colors.blackTextColor,
                ),
              ),
            ),
            if (message.hasCard) ...[
              Gaps.vGap8,
              AiChatCardsWidget(message: message, controller: controller),
            ],
          ],
        ),
      ),
    );
  }
}
