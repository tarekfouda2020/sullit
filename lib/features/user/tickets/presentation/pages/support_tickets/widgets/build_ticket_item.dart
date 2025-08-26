part of 'support_tickets_sheet_widgets_imports.dart';

class BuildTicketItem extends StatelessWidget {
  final Ticket ticketModel;
  final SupportTicketsController controller;

  const BuildTicketItem(
      {super.key, required this.ticketModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    print(getDate(ticketModel.sendingDate.toString()));
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 34,top: 14,bottom: 20,end: 10),
      decoration: const CustomDecoration(),
      child: Column(
        children: [
        Row(
          children: [
            Text( "${tr("ticketId")} :",
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
              Text( "${tr("subject")} :",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap5,
              Text( ticketModel.subject,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            children: [
              Text( "${tr('sendingDate')} :",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap5,
              Text( getDate(ticketModel.sendingDate.toString()),
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap10,
          Row(
            children: [
              Text( "${tr('status')} :",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.hGap5,
              Text( ticketModel.status,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }


  String getDate(String backendDate, {String locale = "en"}) {
    try {
      final parsed = DateTime.parse(backendDate.replaceAll(" ", "T"));
      final utcTime = DateTime.utc(
        parsed.year,
        parsed.month,
        parsed.day,
        parsed.hour,
        parsed.minute,
        parsed.second,
      );
      final localTime = utcTime.toLocal();
      return DateFormat("dd MMM yyyy - hh:mm a", locale).format(localTime);
    } catch (e) {
      return backendDate;
    }
  }


}
