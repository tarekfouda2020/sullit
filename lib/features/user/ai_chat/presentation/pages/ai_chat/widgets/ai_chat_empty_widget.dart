part of 'widgets_imports.dart';

class AiChatEmptyWidget extends StatelessWidget {
  const AiChatEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.dp24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: Dimens.dp50,
              height: Dimens.dp50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.lightPink,
                borderRadius: BorderRadius.circular(Dimens.dp16),
              ),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: context.colors.primary,
                size: Dimens.dp28,
              ),
            ),
          ),
          Gaps.vGap16,
          Center(
            child: Text(
              'What are you looking for?',
              style: AppTextStyle.s16_w600(color: context.colors.black),
            ),
          ),
          Gaps.vGap8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              textAlign: TextAlign.center,
              'Ask for a product, an order, a shop, or what is already in the cart.',
              style: AppTextStyle.s14_w400(color: context.colors.gray).copyWith(height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
