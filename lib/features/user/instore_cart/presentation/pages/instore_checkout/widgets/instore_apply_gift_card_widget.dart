part of '../instore_checkout_imports.dart';

class InstoreApplyGiftCardWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstoreApplyGiftCardWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.giftCardSheet(context),
      child: Row(
        children: [
          Text(
            tr('orApplyGiftCard'),
            style: AppTextStyle.s14_w400(color: context.colors.primary),
          ),
          Gaps.hGap7,
          Icon(Icons.arrow_forward, color: context.colors.primary),
        ],
      ),
    );
  }
}
