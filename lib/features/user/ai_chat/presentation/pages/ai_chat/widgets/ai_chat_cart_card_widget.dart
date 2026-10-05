part of 'widgets_imports.dart';

class AiChatCartCardWidget extends StatelessWidget {
  final AiChatMessage message;
  final AiChatController controller;

  const AiChatCartCardWidget({
    super.key,
    required this.message,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final payload = message.payload;
    if (payload is! CartPayload) return const SizedBox.shrink();
    final items = payload.items;
    return AiChatSheetCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cart · ${payload.action.isEmpty ? 'view' : payload.action}',
            style: AppTextStyle.s14_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          ...items.take(4).map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: Dimens.dp6),
              child: Text(
                '${item.quantity} × ${item.name}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.s12_w400(color: context.colors.blackTextColor),
              ),
            ),
          ),
          Gaps.vGap8,
          Text(
            '${payload.calculableTotal == 0 ? payload.subTotal : payload.calculableTotal} ${payload.currencySymbol}',
            style: AppTextStyle.s14_w600(color: context.colors.primary),
          ),
          Gaps.vGap8,
          DefaultButton(
            title: 'Open cart',
            height: 36,
            onTap: () => controller.openCart(context),
          ),
        ],
      ),
    );
  }
}
