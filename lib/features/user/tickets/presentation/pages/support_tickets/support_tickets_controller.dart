// ignore_for_file: use_build_context_synchronously

part of 'support_tickets_imports.dart';

class SupportTicketsController {
  GenericBloc<bool> isVisibleCubit = GenericBloc(false);
  final GenericBloc<List<File>> imagesCubit = GenericBloc([]);
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();
  final GenericBloc<List<Ticket>> ticketsBloc = GenericBloc([]);

  void getTickets({bool refresh = true}) async {
    return await GetTickets()
        .call(refresh)
        .then((value) => ticketsBloc.onUpdateData(value));
  }

  Future<void> createTicket(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _createTicketParams();
      var data = await SetCreateTicket().call(params);
      if (data != null) {
        CustomToast.showSimpleToast(msg: tr('ticketSent'));
        AutoRouter.of(context).pop();
        subjectController.clear();
        detailsController.clear();
        imagesCubit.onUpdateData([]);
        ticketsBloc.state.data.insert(0,data);
        ticketsBloc.onUpdateData(ticketsBloc.state.data);
      }
    }
  }

  void onOpenTicket(Ticket ticketModel) {
    ticketModel.selected = !ticketModel.selected;
    ticketsBloc.onUpdateData(ticketsBloc.state.data);
  }

  Future<List<File>> addImages(BuildContext context) async {
    var images = await getIt<Utilities>().getImages(context);
    if (images != []) {
      imagesCubit.state.data.addAll(images);
      imagesCubit.onUpdateData(imagesCubit.state.data);
      return images;
    } else {
      return [];
    }
  }

  void showAddTicketDialog(
      BuildContext context, SupportTicketsController controller) {
    showDialog(
      context: context,
      builder: (context) => BuildTicketDialog(
        supportTicketsController: controller,
      ),
    );
  }

  CreateTicketParams _createTicketParams() {
    return CreateTicketParams(
      subject: subjectController.text,
      details: detailsController.text,
      images: imagesCubit.state.data,
    );
  }
}