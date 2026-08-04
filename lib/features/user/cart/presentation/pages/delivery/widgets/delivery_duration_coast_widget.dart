part of 'delivery_widgets_imports.dart';

class DeliveryDurationCoastWidget extends StatelessWidget {
  final SellerShipping shipping;
  const DeliveryDurationCoastWidget({super.key, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Container(
        margin: Dimens.paddingVertical10PX,
        padding: Dimens.paddingAll15PX,
        decoration: BoxDecoration(
            border: Border.all(color: context.colors.greyWhite),
            borderRadius: Dimens.borderRadius5PX,
            color: context.colors.white),
        child: Visibility(
          visible: shipping.delivery != null,
          replacement: Text(
            shipping.deliveryMessage,
            style: AppTextStyle.s14_w400(color: context.colors.black)
                .copyWith(height: 1.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Flexible(
                  child: Text(
                    shipping.delivery?.transitIn ?? "",
                    style: AppTextStyle.s14_w400(
                      color: context.colors.black,
                    ).copyWith(height: 1.2),
                  ),
                ),
              ),
              Gaps.hGap5,
              shipping.delivery?.isShippingFree == true
                  ? Text(shipping.delivery?.shippingCost ?? "",
                          style: AppTextStyle.s14_w400(
                              color: context.colors.black))
                      .withDirhamSymbol()
                  : DirhamPrice(
                      amount: shipping.delivery?.shippingCost ?? "",
                      currencyStyle: AppTextStyle.s16_w400(
                        color: context.colors.black,
                      ),
                      textStyle: AppTextStyle.s14_w400(
                        color: context.colors.black,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
