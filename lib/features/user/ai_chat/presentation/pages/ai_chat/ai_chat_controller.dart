part of 'ai_chat_imports.dart';

class AiChatController {
  AiChatController() {
    openChat();
  }

  final TextEditingController input = TextEditingController();
  final TextEditingController handoffName = TextEditingController();
  final TextEditingController handoffEmail = TextEditingController();
  final TextEditingController handoffReason = TextEditingController();
  final GlobalKey<FormState> handoffFormKey = GlobalKey<FormState>();
  bool requireHandoffEmail = false;
  HandoffForm? handoffForm;
  final ScrollController scroll = ScrollController();
  final GenericBloc<List<AiChatMessage>> messagesBloc = GenericBloc<List<AiChatMessage>>([]);
  final GenericBloc<bool> loadingBloc = GenericBloc<bool>(true);
  final GenericBloc<bool> sendingBloc = GenericBloc<bool>(false);
  final GenericBloc<bool> handoffBloc = GenericBloc<bool>(false);
  final GenericBloc<bool> newChatBloc = GenericBloc<bool>(false);
  final GenericBloc<String?> errorBloc = GenericBloc<String?>(null);

  String? conversationId;
  String macAddress = '';

  Future<void> openChat() async {
    loadingBloc.onUpdateData(true);
    errorBloc.onUpdateData(null);
    macAddress = await getIt<GetDeviceId>().deviceId ?? '';
    if (macAddress.isEmpty) {
      loadingBloc.onUpdateData(false);
      errorBloc.onUpdateData('Device id missing. Restart the app.');
      return;
    }
    var params = _participantParams();
    final conversation = await StartAiConversation().call(params);
    if (conversation == null || conversation.id.isEmpty) {
      loadingBloc.onUpdateData(false);
      errorBloc.onUpdateData('Could not start chat. Try again.');
      return;
    }
    conversationId = conversation.id;
    var historyParams = _messagesParams();
    final history = await GetAiMessages().call(historyParams);
    messagesBloc.onUpdateData(history);
    handoffBloc.onUpdateData(
      history.any((message) => message.handoffActive),
    );
    loadingBloc.onUpdateData(false);
    _scrollDown();
  }

  Future<void> send([String? preset]) async {
    final text = (preset ?? input.text).trim();
    if (text.isEmpty || sendingBloc.state.data || handoffBloc.state.data) {
      return;
    }
    if (text.length > 2000) {
      errorBloc.onUpdateData('Message is too long.');
      return;
    }
    errorBloc.onUpdateData(null);
    input.clear();
    final current = List<AiChatMessage>.from(messagesBloc.state.data);
    current.add(
      AiChatMessage(
        id: 'user-${DateTime.now().microsecondsSinceEpoch}',
        isUser: true,
        text: text,
      ),
    );
    messagesBloc.onUpdateData(current);
    sendingBloc.onUpdateData(true);
    _scrollDown();
    conversationId ??=
        (await StartAiConversation().call(_participantParams()))?.id;
    final id = conversationId;
    if (id == null || id.isEmpty) {
      sendingBloc.onUpdateData(false);
      errorBloc.onUpdateData('Could not send. Try again.');
      return;
    }
    var params = _sendParams(text);
    final reply = await SendAiMessage().call(params);
    sendingBloc.onUpdateData(false);
    if (reply == null) {
      errorBloc.onUpdateData('Message failed. Try again.');
      return;
    }
    final next = List<AiChatMessage>.from(messagesBloc.state.data)
      ..add(reply.toMessage());
    messagesBloc.onUpdateData(next);
    if (reply.handoffActive || reply.type == 'handoff') {
      handoffBloc.onUpdateData(_blocksInput(reply));
    }
    _scrollDown();
  }

  bool _blocksInput(AiChatReply reply) {
    final status = reply.payload?.status;
    if (status == 'closed' || status == 'returned_to_ai') return false;
    return reply.handoffActive || reply.type == 'handoff';
  }

  Future<void> endChat(BuildContext context) async {
    if (newChatBloc.state.data) return;
    newChatBloc.onUpdateData(true);
    try {
      final id = conversationId;
      if (id != null) {
        var params = _participantParams();
        await EndAiConversation(id).call(params);
      }
      conversationId = null;
      messagesBloc.onUpdateData([]);
      handoffBloc.onUpdateData(false);
      await openChat();
      if (context.mounted) {
        CustomToast.showSimpleToast(msg: 'New chat started');
      }
    } finally {
      newChatBloc.onUpdateData(false);
    }
  }

  void submitHandoff(BuildContext context) {
    if (handoffFormKey.currentState?.validate() != true) return;
    handoffForm = _handoffForm();
    Navigator.of(context).pop();
  }

  Future<void> requestHuman(BuildContext context) async {
    final id = conversationId;
    if (id == null) return;
    final token = GlobalState.instance.get('token');
    requireHandoffEmail = token == null || '$token'.isEmpty;
    handoffForm = null;
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AiChatHandoffSheet(controller: this),
    );
    if (handoffForm == null) return;
    getIt<LoadingHelper>().showLoadingDialog();
    var params = _handoffParams();
    var reply = await RequestAiHandoff().call(params);
    getIt<LoadingHelper>().dismissDialog();
    if (reply == null) {
      errorBloc.onUpdateData('Could not reach support.');
      return;
    }
    final next = List<AiChatMessage>.from(messagesBloc.state.data)
      ..add(reply.toMessage());
    messagesBloc.onUpdateData(next);
    handoffBloc.onUpdateData(_blocksInput(reply));
    _scrollDown();
  }

  void openProduct(BuildContext context, AiChatProductCard product) {
    final id = product.id;
    if (id == null) return;
    AutoRouter.of(context).push(
      ProductDetailsRoute(
        params: ProductDetailsPageRouteParams(
          productId: id,
          isFav: product.isWishlist == true,
          branchId: product.branch?.id,
        ),
      ),
    );
  }

  void openOrder(BuildContext context, AiChatPayload payload) {
    final id = payload.id;
    if (id == null) return;
    AutoRouter.of(context).push(
      OrderDetailsPageRoute(isReturnedOrder: false, id: id),
    );
  }

  void openCart(BuildContext context) {
    AutoRouter.of(context).push(CartRoute());
  }

  void openViewAll(BuildContext context, AiChatMessage message) {
    final keyword = message.payload?.viewAll?.query?.keyword ?? '';
    AutoRouter.of(context).push(SearchRoute(searchText: keyword));
  }

  AiChatParticipantParams _participantParams() {
    return AiChatParticipantParams(macAddress: macAddress);
  }

  GetAiMessagesParams _messagesParams() {
    return GetAiMessagesParams(
      conversationId: conversationId ?? '',
      participant: _participantParams(),
    );
  }

  SendAiMessageParams _sendParams(String message) {
    return SendAiMessageParams(
      conversationId: conversationId ?? '',
      macAddress: macAddress,
      message: message,
    );
  }

  HandoffForm _handoffForm() {
    return HandoffForm(
      reason: handoffReason.text.trim(),
      email: handoffEmail.text.trim(),
      name: handoffName.text.trim(),
    );
  }

  HandoffParams _handoffParams() {
    return HandoffParams(
      conversationId: conversationId ?? '',
      macAddress: macAddress,
      reason: handoffForm?.reason,
      contactEmail: handoffForm?.email,
      contactName: handoffForm?.name,
    );
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!scroll.hasClients) return;
      scroll.animateTo(
        scroll.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    });
  }

  void dispose() {
    input.dispose();
    handoffName.dispose();
    handoffEmail.dispose();
    handoffReason.dispose();
    scroll.dispose();
    messagesBloc.close();
    loadingBloc.close();
    sendingBloc.close();
    handoffBloc.close();
    newChatBloc.close();
    errorBloc.close();
  }
}
