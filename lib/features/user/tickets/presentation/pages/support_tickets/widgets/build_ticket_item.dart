part of 'support_tickets_sheet_widgets_imports.dart';

class BuildTicketItem extends StatelessWidget {
  final Ticket ticketModel;
  final SupportTicketsController controller;

  const BuildTicketItem(
      {super.key, required this.ticketModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
          start: 34, top: 14, bottom: 20, end: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const CustomDecoration().copyWith(
        border: Border.all(color: context.colors.gray3, width: 1),
        boxShadow: [],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "${tr("ticketId")} :",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap5,
              Text(
                ticketModel.ticketId,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${tr("subject")} :",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap5,
              Flexible(
                child: Text(
                  ticketModel.subject,
                  style: AppTextStyle.s14_w600(color: context.colors.black)
                      .copyWith(height: 1.3),
                ),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            children: [
              Text(
                "${tr('sendingDate')} :",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap5,
              // Text( getDate(ticketModel.sendingDate.toString()),
              Text(
                getDate(),
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            children: [
              Text(
                "${tr('status')} :",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap5,
              Text(
                ticketModel.status,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getDate() {
    return DateTimeHelper.getDate(ticketModel.sendingDate.toString(),
        formatType: "dd MMM yyyy - hh:mm a");
  }
}
