part of 'cart_widgets_imports.dart';

class CartMinAmountBottomSheet extends StatelessWidget {
  final CartController controller;
  final List<MinAmountSellerDomain> minAmountSellers;

  const CartMinAmountBottomSheet({
    super.key,
    required this.controller,
    required this.minAmountSellers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(context).bottom,
        left: 20,right: 20
      ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gaps.vGap12,
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: context.colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          Gaps.vGap12,
          BottomSheetHeaderWidget(
            title: tr("increaseCartToReachMin"),
            showCloseIcon: true,
          ),
          Gaps.vGap16,
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              itemCount: minAmountSellers.length,
              separatorBuilder: (context, index) => Gaps.vGap16,
              itemBuilder: (context, index) {
                final seller = minAmountSellers[index];
                final cartData = controller.cartItemsBloc.state.data;
                return CartMinAmountSellerItem(
                  seller: seller,
                  controller: controller,
                  remainAmount: cartData.getSingleSellerReMainAmount(seller.shopId),
                );
              },
            ),
          ),
          Gaps.vGap24,
        ],
      ),
    );
  }
}
