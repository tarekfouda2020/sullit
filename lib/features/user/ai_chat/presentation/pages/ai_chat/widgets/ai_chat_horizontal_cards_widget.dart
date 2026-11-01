part of 'widgets_imports.dart';

class AiChatHorizontalCardsWidget extends StatelessWidget {
  final List<AiChatProductCard> products;
  final List<AiChatShopCard> shops;
  final int total;
  final int returned;
  final bool hasViewAll;
  final AiChatMessage message;
  final AiChatController controller;

  const AiChatHorizontalCardsWidget({
    super.key,
    this.products = const [],
    this.shops = const [],
    this.total = 0,
    this.returned = 0,
    this.hasViewAll = false,
    required this.message,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final cards = shops.isNotEmpty ? shops.length : products.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 168,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: cards,
            separatorBuilder: (_, __) => Gaps.hGap10,
            itemBuilder: (context, index) {
              if (shops.isNotEmpty) {
                return AiChatShopTileWidget(item: shops[index]);
              }
              final item = products[index];
              return AiChatProductTileWidget(
                item: item,
                onTap: () => controller.openProduct(context, item),
              );
            },
          ),
        ),
        if (hasViewAll || total > returned) ...[
          Gaps.vGap8,
          TextButton(
            onPressed: () => controller.openViewAll(context, message),
            child: Text(
              total > returned ? 'View all ($total)' : 'View all',
              style: AppTextStyle.s13_w500(color: context.colors.primary),
            ),
          ),
        ],
      ],
    );
  }
}
