part of 'tickets_details_widgets_imports.dart';

class BuildTicketDetailsReplies extends StatelessWidget {
  final List<TicketReply> replies;

  const BuildTicketDetailsReplies({super.key, required this.replies});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: replies.isNotEmpty,
      replacement: Expanded(
        child: Center(
          child: Text(
            tr('noRepliesFoundYet'),
            style: AppTextStyle.s12_w400(color: context.colors.grey),
          ),
        ),
      ),
      child: Flexible(
        child: ListView.builder(
          padding: Dimens.paddingHorizontal15PX,
          itemBuilder: (context, index) => BuildReplayItem(
            replyModel: replies[index],
          ),
          itemCount: replies.length,
        ),
      ),
    );
  }
}
