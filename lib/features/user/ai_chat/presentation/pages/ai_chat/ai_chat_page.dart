part of 'ai_chat_imports.dart';

class AiChatPage extends StatefulWidget {
  const AiChatPage({super.key});

  @override
  State<AiChatPage> createState() => _AiChatPageState();
}

class _AiChatPageState extends State<AiChatPage> {
  late final AiChatController controller;

  @override
  void initState() {
    super.initState();
    controller = AiChatController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: 'Sahla AI',
        bgColor: context.colors.white,
        actions: [
          AiChatNewChatButtonWidget(controller: controller),
        ],
      ),
      body: Column(
        children: [
          AiChatHandoffBannerWidget(controller: controller),
          Expanded(child: AiChatMessageListWidget(controller: controller)),
          AiChatSuggestionsWidget(controller: controller),
          AiChatComposerWidget(controller: controller),
        ],
      ),
    );
  }
}
