part of 'widgets_imports.dart';

class AiChatEmptyWidget extends StatelessWidget {
  const AiChatEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag_outlined, color: context.colors.primary, size: 36),
          Gaps.vGap12,
          Text(
            'Shopping help',
            textAlign: TextAlign.center,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          Text(
            'Ask about products, orders, shops, or your cart.',
            textAlign: TextAlign.center,
            style: AppTextStyle.s13_w400(color: context.colors.gray),
          ),
        ],
      ),
    );
  }
}
