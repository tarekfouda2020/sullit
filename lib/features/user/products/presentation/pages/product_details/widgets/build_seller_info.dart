part of 'product_details_widgets_imports.dart';

class BuildSellerInfo extends StatelessWidget {
final Shop shopModel;

  const BuildSellerInfo({super.key, required this.shopModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sold By :",
                  style: AppTextStyle.s12_w600(
                    color: context.colors.black,
                  ),
                ),
                Gaps.vGap5,
                Text(
                  shopModel.name!,
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            DefaultButton(
              title: "Message Seller",
              width: 120.w,
              height: 25.h,
              borderRadius: Dimens.borderRadius5PX,
              onTap: () {},
            ),
          ],
        ),
        Gaps.line(context.colors.greyWhite, 20.h),
      ],
    );
  }
}
