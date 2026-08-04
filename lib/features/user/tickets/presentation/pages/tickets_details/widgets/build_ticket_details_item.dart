part of 'tickets_details_widgets_imports.dart';

class BuildTicketDetailsItem extends StatelessWidget {
  final Ticket ticket;
  const BuildTicketDetailsItem({Key? key, required this.ticket})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: Dimens.paddingAll15PX,
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius5PX,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: .5,
            )
          ],
        ),
        child: ListTile(
          title: Text(
            ticket.subject,
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
          trailing: Text(
            ticket.status,
            style: AppTextStyle.s12_w400(color: context.colors.primary),
          ),
          minLeadingWidth: 10.w,
        ));
  }
}
