part of 'support_tickets_sheet_widgets_imports.dart';

class BuildTicketItem extends StatelessWidget {
  final Ticket ticketModel;
  final SupportTicketsController controller;

  const BuildTicketItem(
      {super.key, required this.ticketModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 34,top: 14,bottom: 20,end: 10),
      decoration:  CustomDecoration(),
      child: Column(
        children: [
        Row(
          children: [
            Text( "${tr("ticketId")}:",
            style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
            Gaps.hGap5,
            Text( ticketModel.ticketId,
            style: AppTextStyle.s14_w600(color: context.colors.black),
            ),
          ],
        ),
          Gaps.vGap10,
          Row(
            children: [
              Text( "${tr("subject")}:",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap14,
              Text( ticketModel.subject,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            children: [
              Text( "${tr('sendingDate')}:",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap14,
              Text( getDate(),
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            children: [
              Text( "${tr('status')}:",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap14,
              Text( ticketModel.status,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getDate() => DateFormat("dd MMM yyyy - hh:mm a", "en").format(ticketModel.sendingDate);

}
