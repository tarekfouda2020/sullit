// ignore_for_file: use_build_context_synchronously

part of 'tickets_details_imports.dart';

class TicketsDetailsController {
  final GenericBloc<List<File>> imagesCubit = GenericBloc([]);
  final GenericBloc<Ticket?> ticketCubit = GenericBloc(null);
  final TextEditingController description = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  TicketsDetailsController(int id) {
    getTicketsDetails(id, refresh: false);
    getTicketsDetails(id);
  }

  Future<void> getTicketsDetails(int id, {bool refresh = true}) async {
    var params = _detailsParams(id, refresh);
    await GetTicketDetails().call(params).then(
          (value) => ticketCubit.onUpdateData(value),
        );
  }

  Future<void> addTicketReply(int id, BuildContext context) async {
    if (imagesCubit.state.data.isEmpty) {
      CustomToast.showSimpleToast(msg: tr('ticketAddImage'));
      return;
    }
    if (formKey.currentState!.validate()) {
      var params = _replyParams(id);
      var data = await SetAddTicketReply().call(params);
      if (data != null) {
        AutoRouter.of(context).pop();
        CustomToast.showSimpleToast(
            msg: tr('replySentSuccessfully'), type: ToastType.success);
        description.clear();
        imagesCubit.onUpdateData([]);
        ticketCubit.state.data?.replies?.insert(0, data);
        ticketCubit.onUpdateData(ticketCubit.state.data);
      } else {
        return;
      }
    }
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

  void showAddReplyDialog(BuildContext context, int id) {
    showDialog(
      context: context,
      builder: (context) => BuildTicketDetailsDialog(controller: this, id: id),
    );
  }

  GenericParams _detailsParams(int id, bool refresh) {
    return GenericParams(id: id, refresh: refresh);
  }

  AddTicketReplyParams _replyParams(int id) {
    return AddTicketReplyParams(
      id: id,
      reply: description.text,
      images: imagesCubit.state.data,
    );
  }
}
