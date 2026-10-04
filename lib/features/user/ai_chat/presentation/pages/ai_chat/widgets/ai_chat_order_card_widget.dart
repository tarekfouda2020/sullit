part of 'widgets_imports.dart';

class AiChatOrderCardWidget extends StatelessWidget {
  final AiChatMessage message;
  final AiChatController controller;

  const AiChatOrderCardWidget({
    super.key,
    required this.message,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final data = message.payload;
    return GestureDetector(
      onTap: () {
        if (data != null) controller.openOrder(context, data);
      },
      child: AiChatSheetCardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data?.code ?? 'Order',
              style: AppTextStyle.s14_w600(color: context.colors.black),
            ),
            Gaps.vGap8,
            Text(
              'Delivery: ${data?.deliveryStatus ?? '-'}',
              style: AppTextStyle.s12_w400(color: context.colors.blackTextColor),
            ),
            Text(
              'Payment: ${data?.paymentStatus ?? '-'}',
              style: AppTextStyle.s12_w400(color: context.colors.blackTextColor),
            ),
            Gaps.vGap8,
            Text(
              '${data?.grandTotal ?? ''} ${data?.currencySymbol ?? ''}',
              style: AppTextStyle.s14_w600(color: context.colors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
