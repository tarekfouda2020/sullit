part of 'support_imports.dart';

class SupportController {
  final GenericBloc<List<SupportMsg>> msgCubit = GenericBloc([]);
  final TextEditingController msgController = TextEditingController();
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  SupportController() {
    getSupportMessages();
  }

  void getSupportMessages() async {
    var result = await GetSupportMessages()(NoParams());
    msgCubit.onUpdateData(result);
  }

  void sendMessage() async {
    if (msgController.text.trim().isNotEmpty) {
      var params = _msgParams();
      var result = await SendSupportMessages().call(params);
      msgCubit.onUpdateData(result);
      msgController.clear();
    }
  }


  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
      var params = _msgParams();
      var result = await SendSupportMessages().call(params);
      msgCubit.onUpdateData(result);
      imageCubit.onUpdateToInitState(null);
    }
  }

  SupportMsgParams _msgParams() {
    return SupportMsgParams(
      text: msgController.text,
      image: imageCubit.state.data,
    );
  }
}
