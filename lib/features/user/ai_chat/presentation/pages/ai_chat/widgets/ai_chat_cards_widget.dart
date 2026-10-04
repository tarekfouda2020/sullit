part of 'widgets_imports.dart';

class AiChatCardsWidget extends StatelessWidget {
  final AiChatMessage message;
  final AiChatController controller;

  const AiChatCardsWidget({
    super.key,
    required this.message,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    switch (message.type) {
      case 'product':
        final product = message.payload?.product;
        if (product == null) return const SizedBox.shrink();
        return AiChatProductTileWidget(
          item: product,
          onTap: () => controller.openProduct(context, product),
        );
      case 'products':
        return AiChatHorizontalCardsWidget(
          products: message.payload?.products ?? const [],
          message: message,
          controller: controller,
        );
      case 'shops':
        return AiChatHorizontalCardsWidget(
          shops: message.payload?.shops ?? const [],
          message: message,
          controller: controller,
        );
      case 'branches':
        return AiChatBranchListWidget(message: message, controller: controller);
      case 'cart':
        return AiChatCartCardWidget(message: message, controller: controller);
      case 'order':
        return AiChatOrderCardWidget(message: message, controller: controller);
      case 'handoff':
        return AiChatHandoffCardWidget(payload: message.payload);
      default:
        return const SizedBox.shrink();
    }
  }
}
