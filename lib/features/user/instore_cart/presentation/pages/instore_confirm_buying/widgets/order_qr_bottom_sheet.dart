part of 'instore_confirm_buying_widgets_imports.dart';

class OrderQrBottomSheet extends StatelessWidget {
  final String orderNumber;
  final int orderId;
  final String status;
  final String totalPrice;

  const OrderQrBottomSheet({
    super.key,
    required this.orderNumber,
    required this.status,
    required this.totalPrice, required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(21, 28, 19, 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(36),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(),
                Text('Order QR', style: AppTextStyle.s18_w700(color: context.colors.black)),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.close,
                    color: context.colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
            Gaps.vGap24,
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: context.colors.primary.withOpacity(0.10),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Order No. : ",
                    style: AppTextStyle.s16_w300(color: context.colors.textColor),
                  ),
                  Text(
                    orderNumber,
                    style: AppTextStyle.s18_w600(color: context.colors.primary),
                  ),
                ],
              ),
            ),
            Gaps.vGap30,
            SvgPicture.string(
              getIt<BarcodeService>().generateQrCode(orderId.toString(),),
              width: 280,
              height: 280,
            ),
            Gaps.vGap30,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReviewStatusWidget(
                  textColor: context.colors.mainGreen,
                  backGroundColor: context.colors.lightGreen,
                  text: status,
                  child: SvgPicture.asset(Res.layersIcon, width: 16, height: 16),
                ),
                DirhamPrice(
                  amount: totalPrice,
                  textStyle: AppTextStyle.s20_w500(color: context.colors.mainGreen),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
