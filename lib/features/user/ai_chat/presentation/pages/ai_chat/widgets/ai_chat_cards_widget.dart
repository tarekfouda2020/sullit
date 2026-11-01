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
      case AiChatMessageType.product:
        final detail = message.payload;
        if (detail is! DetailAiChatPayload) return const SizedBox.shrink();
        AiChatProductCard? product = detail.product;
        if (product == null) return const SizedBox.shrink();
        return AiChatProductTileWidget(
          item: product,
          onTap: () => controller.openProduct(context, product),
        );
      case AiChatMessageType.products:
        final productsPayload = message.payload;
        return AiChatHorizontalCardsWidget(
          products: productsPayload is DetailAiChatPayload
              ? productsPayload.products
              : const [],
          total: productsPayload is DetailAiChatPayload
              ? productsPayload.total ?? 0
              : 0,
          returned: productsPayload is DetailAiChatPayload
              ? productsPayload.returned ?? 0
              : 0,
          hasViewAll: productsPayload is DetailAiChatPayload &&
              productsPayload.viewAll != null,
          message: message,
          controller: controller,
        );
      case AiChatMessageType.shops:
        final shopsPayload = message.payload;
        return AiChatHorizontalCardsWidget(
          shops: shopsPayload is ShopsPayload ? shopsPayload.shops : const [],
          total: shopsPayload is ShopsPayload ? shopsPayload.total : 0,
          returned: shopsPayload is ShopsPayload ? shopsPayload.returned : 0,
          hasViewAll:
              shopsPayload is ShopsPayload && shopsPayload.viewAll != null,
          message: message,
          controller: controller,
        );
      case AiChatMessageType.branches:
        return AiChatBranchListWidget(message: message, controller: controller);
      case AiChatMessageType.cart:
        return AiChatCartCardWidget(message: message, controller: controller);
      case AiChatMessageType.order:
        return AiChatOrderCardWidget(message: message, controller: controller);
      case AiChatMessageType.handoff:
        return AiChatHandoffCardWidget(payload: message.payload);
      default:
        return const SizedBox.shrink();
    }
  }
}
