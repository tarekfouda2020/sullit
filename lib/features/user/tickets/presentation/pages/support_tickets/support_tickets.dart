part of 'support_tickets_imports.dart';

class SupportTickets extends StatefulWidget {
  const SupportTickets({Key? key}) : super(key: key);

  @override
  State<SupportTickets> createState() => _SupportTicketsState();
}

class _SupportTicketsState extends State<SupportTickets> {
  late SupportTicketsController controller;

  @override
  void initState() {
    controller = SupportTicketsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  DefaultAppBar(title: tr("supportTickets"), showBack: true),
      backgroundColor: context.colors.customBackground,
      floatingActionButton: BuildAddTicketBtn(controller: controller),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildHeaderText(),
          Flexible(
            child: GenericListView(
              type: ListViewType.api,
              padding: Dimens.standardPadding,
              onRefresh: controller.getTickets,
              cubit: controller.ticketsBloc,
              itemBuilder: (_, index, item) => BuildTicketItem(
                ticketModel: item,
                controller: controller,
              ),
              emptyWidget: Center(
                child: Text(
                  tr("noTickets"),
                  style: AppTextStyle.s16_w700(
                    color: context.colors.black,
                  ),
                ),
              ),
              loadingWidget: const BuildSupportTicketsLoading(),
            ),
          ),
        ],
      ),
    );
  }
}
