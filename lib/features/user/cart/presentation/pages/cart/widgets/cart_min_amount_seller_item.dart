part of 'cart_widgets_imports.dart';

class CartMinAmountSellerItem extends StatelessWidget {
  final MinAmountSellerDomain seller;
  final CartController controller;
  final double remainAmount;

  const CartMinAmountSellerItem({
    super.key,
    required this.seller,
    required this.controller,
    required this.remainAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border:
            Border.all(color: context.colors.grey.withOpacity(0.2), width: 1.3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.storefront,
                  color: context.colors.primary, size: 20.sp),
              Gaps.hGap8,
              Expanded(
                child: Text(
                  seller.name,
                  style: AppTextStyle.s16_w700(color: context.colors.black),
                ),
              ),
            ],
          ),
          Gaps.vGap8,
          Row(
            children: [
              Text(
                remainAmount.toStringAsFixed(2),
                style: AppTextStyle.s15_w600(color: context.colors.primary),
              ).withDirhamSymbol(),
              Text(
                " more needed to reach minimum order",
                style: AppTextStyle.s14_w500(color: context.colors.primary),
              ),
            ],
          ),
          Gaps.vGap12,
          Column(
            spacing: 12,
            children: [
              DefaultButton(
                title: "Add more items",
                textColor: context.colors.primary,
                borderColor: context.colors.primary,
                fontSize: 16,
                color: Colors.transparent,
                onTap: () =>
                    controller.navigateToSeller(context, seller.shopId),
                height: 35.h,
                margin: EdgeInsets.zero,
              ),
              DefaultButton(
                title: "Empty “${seller.name}” Cart",
                fontSize: 16,
                color: context.colors.white,
                textColor: context.colors.grey,
                borderColor: context.colors.grey.withOpacity(0.3),
                onTap: () => controller.clearSellerItems(context, seller.id),
                height: 35.h,
                margin: EdgeInsets.zero,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
