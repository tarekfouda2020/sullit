part of 'widgets_imports.dart';

class BuildPharmacyCartItem extends StatelessWidget {
  final CartItem cartItem;
  final PharmacyCartController controller;

  const BuildPharmacyCartItem(
      {super.key, required this.cartItem, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      padding: const EdgeInsetsDirectional.only(end: 16, top: 16, bottom: 16, start: 5),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        radius: Dimens.borderRadius12PX,
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CachedImage(
            url: "https://static.wixstatic.com/media/cf1c5e_6f1836594d7d4c80bc5e5c7075a36328~mv2.png/v1/fill/w_500,h_500,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/cf1c5e_6f1836594d7d4c80bc5e5c7075a36328~mv2.png",
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          ),
          Gaps.hGap11,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Panadol Advance 500mg",
                        style: AppTextStyle.s14_w600(color: context.colors.black)
                            .copyWith(height: 1.5),
                      ),
                    ),
                    PharmacyCartFavIconWidget(cartItem: cartItem, controller: controller),
                  ],
                ),
                Gaps.vGap5,
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 10.sp,
                  ignoreGestures: true,
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rounded,
                    color: context.colors.yellow,
                  ),
                  unratedColor: context.colors.grey,
                  onRatingUpdate: (rating) {},
                ),
                Gaps.vGap5,
                DirhamPrice(
                  amount: "15.0",
                  currencyStyle: AppTextStyle.s16_w400(color: context.colors.primary),
                  textStyle: AppTextStyle.s14_w600(color: context.colors.primary),
                ),
                Gaps.vGap6,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "${tr("soldBy")} :",
                      style: AppTextStyle.s12_w400(color: context.colors.textColor),
                    ),
                    Gaps.hGap5,
                    Text(
                      "Al Dawaa Pharmacy",
                      style: AppTextStyle.s12_w600(color: context.colors.black),
                    ),
                  ],
                ),
                Gaps.vGap11,
                ChangePharmacyCartQtyWidget(
                  cartItem: cartItem,
                  controller: controller,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
