part of 'tickets_details_imports.dart';

class TicketsDetails extends StatefulWidget {
  final int id;

  const TicketsDetails({Key? key, required this.id}) : super(key: key);

  @override
  State<TicketsDetails> createState() => _TicketsDetailsState();
}

class _TicketsDetailsState extends State<TicketsDetails> {
  late TicketsDetailsController controller;

  @override
  void initState() {
    controller = TicketsDetailsController(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      floatingActionButton:
          BuildAddReplayButton(controller: controller, id: widget.id),
      appBar: DefaultAppBar(title: tr('ticketDetails'), showBack: true),
      body: BlocBuilder<GenericBloc<Ticket?>, GenericState<Ticket?>>(
        bloc: controller.ticketCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildTicketDetailsItem(ticket: state.data!),
                BuildTicketDetailsReplies(replies: state.data!.replies!),
              ],
            );
          } else {
            return const BuildTicketsDetailsLoading();
          }
        },
      ),
    );
  }
}
