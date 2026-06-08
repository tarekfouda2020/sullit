part of 'support_tickets_sheet_widgets_imports.dart';

class BuildAddTicketBtn extends StatelessWidget {
  final SupportTicketsController controller;

  const BuildAddTicketBtn({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "",
      onTap: () => controller.showAddTicketsSheet(context),
      margin: EdgeInsets.only(
          right: 20, left: 20, bottom: Dimens.iosBottomDp(context)),
      height: 50,
      customLabel: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add, color: context.colors.white, size: 20.sp),
          Gaps.hGap2,
          Text(
            tr("createTicket"),
            style: AppTextStyle.s18_w700(color: context.colors.white),
          )
        ],
      ),
    );
  }
}
