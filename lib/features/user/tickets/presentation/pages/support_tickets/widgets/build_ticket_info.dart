part of 'support_tickets_widgets_imports.dart';

class BuildTicketInfo extends StatelessWidget {
  final Ticket ticketModel;

  const BuildTicketInfo({super.key, required this.ticketModel});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: ticketModel.selected,
      child: Container(
        margin: Dimens.paddingVertical5PX,
        padding: Dimens.paddingAll10PX,
        decoration: CustomDecoration(),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Ticket id",
                style: AppTextStyle.s14_w500(
                  color: context.colors.black,
                ),
              ),
              trailing: Text(
                "#${ticketModel.ticketId}",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              visualDensity: const VisualDensity(vertical: -4),
            ),
            Gaps.line(context.colors.blackOpacity, 5.h),
            ListTile(
              title: Text(
                tr('sendingDate'),
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
              trailing: Text(
                DateFormat.yMd().add_jm().format(
                      ticketModel.sendingDate,
                    ),
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              visualDensity: const VisualDensity(vertical: -4),
            ),
            Gaps.line(context.colors.blackOpacity, 5.h),
            ListTile(
              title: Text(
                tr("options"),
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
              trailing: InkWell(
                onTap: () => AutoRouter.of(context)
                    .push(TicketsDetailsRoute(id: ticketModel.id)),
                child: Text(
                  "${tr('viewDetails')} >",
                  style: AppTextStyle.s14_w400(color: context.colors.primary),
                ),
              ),
              visualDensity: const VisualDensity(vertical: -4),
            ),
          ],
        ),
      ),
    );
  }
}
